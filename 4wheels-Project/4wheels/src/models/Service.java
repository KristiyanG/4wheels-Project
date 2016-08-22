package models;

public class Service {

	private String name;
	private User user;
	private String location;
	private double rating;
	private String phone;
	private double votes;
	
	public Service(String name, User user, String location, String phone) {
		super();
		this.name = name;
		this.user = user;
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
	
	
}
