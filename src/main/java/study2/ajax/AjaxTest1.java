package study2.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

@SuppressWarnings("serial")
@WebServlet("/AjaxTest1")
public class AjaxTest1 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);
		System.out.println("vo : " + vo);
		
		String str = "";
		str += "닉네임 : " + vo.getNickName() + "<br/>";
		str += "성명 : " + vo.getName() + "<br/>";
		str += "성별 : " + vo.getGender() + "<br/>";
		
		response.getWriter().write(str);
	}
	
}
