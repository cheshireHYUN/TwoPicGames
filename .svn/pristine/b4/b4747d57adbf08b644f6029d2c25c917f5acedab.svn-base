package games.comcategory.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import games.comcategory.vo.CategoryDetailVO;
import games.comcategory.vo.CategoryVO;

public class CategoryDAOImpl implements ICategoryDAO {

	private SqlMapClient smc;
	private static ICategoryDAO catDAO;
	
	private CategoryDAOImpl() {
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static ICategoryDAO getInstance() {
		if(catDAO == null) {
			catDAO = new CategoryDAOImpl();
		}
		return catDAO;
	}
	
	@Override
	public List<CategoryDetailVO> allCategoryList() {
		List<CategoryDetailVO> list = null;
		
		try {
			list = smc.queryForList("category.allCategoryList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void insertCategory(CategoryVO vo) {
		// TODO Auto-generated method stub
		try {
			smc.update("category.insertCategory",vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String getDetailId() {
		// TODO Auto-generated method stub
		String detail_id = null;
		
		try {
			detail_id = (String)smc.queryForObject("category.getDetailId");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return detail_id;
	}

	@Override
	public void deleteCategory(String detail_id) {
		// TODO Auto-generated method stub
		try {
			smc.delete("category.deleteCategory",detail_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
