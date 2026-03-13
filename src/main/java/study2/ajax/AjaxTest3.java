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
@WebServlet("/AjaxTest3")
public class AjaxTest3 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);
		System.out.println("vo : " + vo);
		
		String strLevel = "";
		if(vo.getLevel() == 0) strLevel="관리자";
		else if(vo.getLevel() == 1) strLevel="준회원";
		else if(vo.getLevel() == 2) strLevel="정회원";
		else if(vo.getLevel() == 3) strLevel="우수회원";
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("nickName", vo.getNickName());
		map.put("name", vo.getName());
		map.put("gender", vo.getGender());
		map.put("email", vo.getEmail());
		map.put("level", strLevel);
		
		JSONObject jobj = new JSONObject(map);
		
		
		response.getWriter().write(jobj.toString());
	}
	
}
