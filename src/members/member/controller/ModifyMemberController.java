package members.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.service.IMemberService;
import members.member.service.MemberServiceImpl;
import members.member.vo.MemberVO;

@WebServlet("/members/modifyMember.do")
public class ModifyMemberController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String btn = req.getParameter("btn");
		if (btn != null) {
			switch (btn) {
			case "0":
				req.getRequestDispatcher("/members/memberChangeInfo.jsp").forward(req, resp);
				break;
			case "1":
				req.getRequestDispatcher("/listOrder.do").forward(req, resp);
				break;
			case "2":
				req.getRequestDispatcher("/members/memberInfo.jsp").forward(req, resp);
				break;
			}
		}else {
			req.getRequestDispatcher("/members/memberInfo.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IMemberService memService = MemberServiceImpl.getInstance();
		req.setCharacterEncoding("UTF-8");

		HttpSession session = req.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		;

		String btn = req.getParameter("btn");
		int cnt = 0;
		switch (btn) {
		case "infoChange":
			String edit_name = req.getParameter("edit_name");
			String edit_mail = req.getParameter("edit_mail");
			String edit_ph = req.getParameter("edit_ph");
			String edit_bir = req.getParameter("edit_bir");
			member.setMem_ph(edit_ph);
			member.setMem_name(edit_name);
			member.setMem_mail(edit_mail);
			member.setMem_bir(edit_bir);
			cnt = memService.modifyInfo(member);
			req.getRequestDispatcher("/members/memberChangeInfo.jsp").forward(req, resp);
			break;
		case "changePw":
			String edit_pw = req.getParameter("edit_pw");
			String edit_pw2 = req.getParameter("edit_pw2");
			if (edit_pw.equals(edit_pw2)) {
				member.setMem_pw(edit_pw);
				cnt = memService.modifyPw(member);
				req.getRequestDispatcher("/members/memberInfo.jsp").forward(req, resp);
				break;
			} else {
				req.getRequestDispatcher("/members/memberInfo.jsp").forward(req, resp);
				break;
			}
		case "deleteInfo":
			member.setMem_wit("O");
			int witCnt = memService.withdrawMember(member);

			if (witCnt > 0) {
				session.removeAttribute("loginMember");
				req.getRequestDispatcher("/main/main.jsp").forward(req, resp);
			}

			break;
		default:
			break;
		}

	}
}
