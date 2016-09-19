package busynesLogic.models;

public class Service {

	private String name;
	private String user;
	private String location;
	private double rating;
	private String phone;
	private double votes;
	
	public Service(String name, String string, String location, String phone) {
		super();
		this.name = name;
		this.user = string;
		this.location = location;
		this.phone = phone;
		this.rating=0;
		this.votes=0;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	
}
