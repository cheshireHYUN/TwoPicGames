package members.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import members.member.service.IMemberService;
import members.member.service.MemberServiceImpl;
import members.member.vo.MemberVO;

@WebServlet("/idListController.do")
public class IdListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IMemberService memService = MemberServiceImpl.getInstance();
		req.setCharacterEncoding("UTF-8");
		List<MemberVO> memList = memService.getAllMember();
		req.setAttribute("memList", memList);
		req.getRequestDispatcher("/members/idList.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mem_id = req.getParameter("mem_id");
		IMemberService memService = MemberServiceImpl.getInstance();
		MemberVO member = new MemberVO();
		member.setMem_id(mem_id);
		member.setMem_wit("O");
		memService.withdrawMember(member);
		
		List<MemberVO> memList = memService.getAllMember();
		req.setAttribute("memList", memList);
		req.getRequestDispatcher("/members/idList.jsp").forward(req, resp);
	}
	
	
}
