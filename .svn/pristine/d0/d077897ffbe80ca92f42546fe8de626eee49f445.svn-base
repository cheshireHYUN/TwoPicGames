package games.comcategory.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import games.comcategory.service.CategoryServiceImpl;
import games.comcategory.service.ICategoryService;

@WebServlet("/deleteCat.do")
public class deleteCategoryController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ICategoryService catService = CategoryServiceImpl.getInstance();
		String detail_id = req.getParameter("detail_id");
		
		catService.deleteCategory(detail_id);
		
		String redirectUrl = req.getContextPath() + "/GameListAdmin.do";

		// 요청 방향을 바꾸어줌(Response Header에 location 값으로 넣어주어 해당 링크로 다시 돌아가게 함)
		// status code가 302일 때 Reponseheader에는 항상 location이 들어가 있음
		resp.sendRedirect(redirectUrl);
	}
}
