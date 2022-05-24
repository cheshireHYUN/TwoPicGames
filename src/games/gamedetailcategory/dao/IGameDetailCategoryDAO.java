package games.gamedetailcategory.dao;

public interface IGameDetailCategoryDAO {
	public int insertGameDetailCategory(String[] category, String game_id);

	public void deleteGameDetailCagetory(String game_id);
}
