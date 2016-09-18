package busynesLogic.models;

public class Service {

	private String name;
	private String userEmail;
	private String location;
	private double rating;
	private String phone;
	private double votes;
	
	public Service(String name, String email, String location, String phone) {
		super();
		this.name = name;
		this.userEmail = email;
		this.location = location;
		this.phone = phone;
		this.rating=0;
		this.votes=0;
	}
	
	public void setRating(int rating){
		this.rating+=rating;
		this.votes++;
	}
	public double getRating(){
		if(votes==0){
			return rating;
		}
		return rating/votes;
	}
	public String getName() {
		return name;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name + "location "+ location;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public double getVotes() {
		return votes;
	}

	public void setVotes(double votes) {
		this.votes = votes;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}
	
	
}
