package models;

import interfaces.Vehicle;

public class Car implements Vehicle{


	private User user;
	private String make;
	private String model;
	private int year;
	private int rating;
	private double price;
	private boolean xenon;
	private boolean abs;
	private int votes;

	public Car(User user, String make, String model, int year,
			double price, boolean xenon, boolean abs) {
		super();
		this.user = user;
		this.make = make;
		this.model = model;
		this.year = year;
		this.rating = 0;
		this.price = price;
		this.xenon = xenon;
		this.abs = abs;
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

	@Override
	public String toString() {
		return "Car: user=" + user + ", make=" + make + ", model=" + model
				+ ", year=" + year + ", rating=" + rating + ", price=" + price
				+ ", xenon=" + xenon + ", abs=" + abs;
	}
	

	
}
