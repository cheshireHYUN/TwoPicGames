package wishList.vo;

public class WishListVO {
	
	private String wishId;
	private String memId;
	private String gameId;
	private int wishArm = -1;
	
	
	public String getWishId() {
		return wishId;
	}
	public void setWishId(String wishId) {
		this.wishId = wishId;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getGameId() {
		return gameId;
	}
	public void setGameId(String gameId) {
		this.gameId = gameId;
	}
	public int getWishArm() {
		return wishArm;
	}
	public void setWishArm(int wishArm) {
		this.wishArm = wishArm;
	}
}