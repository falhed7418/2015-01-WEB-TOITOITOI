package cafein.post;

import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cafein.util.IllegalAPIPathException;
import cafein.util.Validation;

@Controller
public class PostController extends HttpServlet {
	@Autowired
	private PostDAO postDao;
	
	//post/{postId}부터 시작해도 되지 않을까?
	@RequestMapping(value="/place/{placeId}/dear/{dearName}/post/{postId}", method=RequestMethod.GET)
	public String viewPost(@PathVariable Integer postId, Model model) throws SQLException {
		if(!Validation.isValidParameter(postId) || !Validation.isValidParameterType(postId)){
			throw new IllegalAPIPathException();
		}
		model.addAttribute("post", postDao.getPostByPostId(postId));
		return "main";
	}	
}
