package orders.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import orders.service.IOrderService;
import orders.service.OrderServiceImpl;

@WebServlet("/order/SuccessOrderController.do")
public class SuccessOrderController extends HttpServlet{
	
	// 결제완료했으니 order테이블에 성공한 내역 넣는 쿼리 작성하고 
	// 페이지 자체에선 여기서는 전체구매내역을 띄워볼까함
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("[결제 성공페이지] doget 들어왔다!");
		
		
		String[] cartNoList = req.getParameterValues("cartNoPara");
		for (String i : cartNoList) {
			System.out.print("성공페이지에 파라미터 무사히 들어왔니..? =>" + i);
		}
		
		

		IOrderService service = OrderServiceImpl.getInstance();
    	System.out.print("ORDER 디비에 결제성공한 CartNo 넣는 연산");    	
    	for(String cartNo : cartNoList){
    		service.insertOrder(cartNo);
    	}
		
    	String redirectUrl = req.getContextPath()+"/main/main.jsp";
		resp.sendRedirect(redirectUrl);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
	}
	
	
	

}
