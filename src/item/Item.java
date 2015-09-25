package item;

public class Item {
	private String ItemID;
	private String ItemName;
	private String Price;
	public String getItemID() {
		return ItemID;
	}
	public void setItemID(String itemID) {
		ItemID = itemID;
	}
	public String getItemName() {
		return ItemName;
	}
	public void setItemName(String itemName) {
		ItemName = itemName;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	@Override
	public String toString() {
		return "Item [ItemID=" + ItemID + ", ItemName=" + ItemName + ", Price="
				+ Price + "]";
	}
	

}
