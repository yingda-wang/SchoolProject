package pojo;

public class Computer {
	private  String name;
	@Override
	public String toString() {
		return "Computer [name=" + name + ", id=" + id + ", price=" + price + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	private long id;
	private double price;
}
