package games.comcategory.service;

import java.util.List;

import games.comcategory.dao.CategoryDAOImpl;
import games.comcategory.dao.ICategoryDAO;
import games.comcategory.vo.CategoryDetailVO;
import games.comcategory.vo.CategoryVO;

public class CategoryServiceImpl implements ICategoryService {

	private static ICategoryService catService;
	private ICategoryDAO catDAO;

	private CategoryServiceImpl() {
		catDAO = CategoryDAOImpl.getInstance();
	}

	public static ICategoryService getInstance() {
		if (catService == null) {
			catService = new CategoryServiceImpl();
		}
		return catService;
	}

	@Override
	public List<CategoryDetailVO> allCategoryList() {
		// TODO Auto-generated method stub
		return catDAO.allCategoryList();
	}

	@Override
	public void insertCategory(CategoryVO vo) {
		// TODO Auto-generated method stub
		catDAO.insertCategory(vo);
	}

	@Override
	public String getDetailId() {
		// TODO Auto-generated method stub
		return catDAO.getDetailId();
	}

	@Override
	public void deleteCategory(String detail_id) {
		// TODO Auto-generated method stub
		catDAO.deleteCategory(detail_id);
	}
}
