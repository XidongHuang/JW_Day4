package javaweb.shoppingcart.domain;

public class Customer {
	private String name;
	private String address;
	private String cardType;
	private String cardNumber;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	@Override
	public String toString() {
		return "Customer [name=" + name + ", address=" + address + ", cardType=" + cardType + ", cardNumber="
				+ cardNumber + "]";
	}
	public Customer(String name, String address, String cardType, String cardNumber) {
		super();
		this.name = name;
		this.address = address;
		this.cardType = cardType;
		this.cardNumber = cardNumber;
	}
	public Customer() {
		super();
	}
	
	
	
}
