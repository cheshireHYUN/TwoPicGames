package orders.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import members.member.vo.MemberVO;
import orders.service.IOrderService;
import orders.service.OrderServiceImpl;
import orders.vo.OrderVO;


@MultipartConfig(fileSizeThreshold = 1024 * 1024 *1000, maxFileSize = 1024 * 1024 * 1000, maxRequestSize = 1024 * 1024 * 1000)
@WebServlet("/listOrder.do")
public class ListOrderController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IOrderService orderService = OrderServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginMember");
		List<OrderVO> orderList = orderService.getOrderList(member.getMem_id());
		
		req.setAttribute("orderList", orderList);
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		RequestDispatcher rd = req.getRequestDispatcher("main/accountOrder2.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
