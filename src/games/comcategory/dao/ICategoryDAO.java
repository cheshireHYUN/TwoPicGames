package games.comcategory.dao;

import java.util.List;

import games.comcategory.vo.CategoryDetailVO;
import games.comcategory.vo.CategoryVO;

public interface ICategoryDAO {
	
	public List<CategoryDetailVO> allCategoryList();

	public void insertCategory(CategoryVO vo);

	public String getDetailId();

	public void deleteCategory(String detail_id);
	
}
