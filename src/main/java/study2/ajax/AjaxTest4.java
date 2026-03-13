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
@WebServlet("/AjaxTest4")
public class AjaxTest4 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDAO dao = new MemberDAO();
		
		//MemberVO vo = dao.getMemberIdCheck(mid);
		int cnt = dao.getMemberCount(); 
		System.out.println("cnt : " + cnt);
		
		response.getWriter().write(cnt+"");
	}
	
}
