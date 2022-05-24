package members.member.controller;

import java.io.IOException;
import java.time.LocalDate;
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

@WebServlet("/members/insert.do")
public class InsertMemberController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/members/join.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IMemberService memService = MemberServiceImpl.getInstance();

		req.setCharacterEncoding("UTF-8");

		String mem_id = req.getParameter("mem_id");
		String mem_name = req.getParameter("mem_name");
		String mem_pw = req.getParameter("mem_pw");
		String mem_ph = req.getParameter("mem_ph");
		String mem_mail = req.getParameter("mem_mail");
		String mem_bir = req.getParameter("mem_bir");
		

		MemberVO member = new MemberVO();
		member.setMem_id(mem_id);
		member.setMem_name(mem_name);
		member.setMem_pw(mem_pw);
		member.setMem_ph(mem_ph);
		member.setMem_mail(mem_mail);
		member.setMem_bir(mem_bir);
		
		memService.insertMember(member);

		RequestDispatcher rd = req.getRequestDispatcher("/members/login.jsp");
		rd.forward(req, resp);
	}
}