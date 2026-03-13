package study2.ajax;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import member.MemberDAO;
import member.MemberVO;

@SuppressWarnings("serial")
@WebServlet("/AjaxTest5")
public class AjaxTest5 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDAO dao = new MemberDAO();
		
		//MemberVO vo = dao.getMemberIdCheck(mid);
		int female = dao.getMemberGenderCount(); 
		System.out.println("female : " + female);
		
		response.getWriter().write(female+"");
	}
	
}
