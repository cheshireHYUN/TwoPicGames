package games.gamedetailcategory.service;

public interface IGameDetailCategoryService {
	public int insertGameDetailCategory(String[] category, String game_id);

	public void deleteGameDetailCagetory(String game_id);
}
