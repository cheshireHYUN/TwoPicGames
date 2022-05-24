package members.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import members.member.service.IMemberService;
import members.member.service.MemberServiceImpl;
import members.member.vo.MemberVO;

@WebServlet("/members/memList.do")
public class ListMemberController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IMemberService memService = MemberServiceImpl.getInstance();
		
		List<MemberVO> memList = memService.getAllMember();
		
		req.setAttribute("memList", memList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/members/memList.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}