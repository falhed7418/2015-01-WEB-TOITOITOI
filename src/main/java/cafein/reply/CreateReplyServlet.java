package cafein.reply;

import java.io.IOException;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cafein.util.Validation;

@RestController
public class CreateReplyServlet {
	@Autowired
	private ReplyDAO replydao;

	
	private static final Logger logger = LoggerFactory.getLogger(CreateReplyServlet.class);
	private static final long serialVersionUID = 1L;
	
	//spring form tag를 적용할 수가 없다. js코드에서 render method로 html을 생성해내고 있기 때문.
	@RequestMapping(value="/createReply", method=RequestMethod.POST)
	protected @ResponseBody Reply createReply(@RequestParam(value="pid")int pid, @RequestParam(value="content",required = false)String contents) throws IOException {
		if (!Validation.isValidParameter (contents)) {
			//resp.sendRedirect("/cafe?cid=" + cid);
			//error상황일 때 어떻게 보여줄지. 클라이언트에 json으로 error메시지를 넘긴다.
			//json으로 에러상황을 알릴때 어떻게 처리?
			throw new IllegalArgumentException();
			// @ControllerAdivce
			// return "redirect:/cafe";   
			 // Reply를 JSON으로 반환하는 서블릿에서 리다이렉르트 하려면 어떻게 해야하나?
		}
		try {
			Reply reply = new Reply(pid, contents);
			logger.debug("Reply:pid,content:"+reply.getPid()+reply.getReplyContent());
			return (replydao.addReply(reply));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;	// Reply를 JSON으로 반환하는 서블릿에서 SQLException은 어떻게 처리해야하나?
		}
	}
}