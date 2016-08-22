package models;

import interfaces.Vehicle;
import exceptions.InvalidPasswordException;

public class User {

	private static int unique_id = 0;

	private String name;
	private String phone;
	private String password;
	private int id;
	private int rating;
	private String email;
	private String location;
	private int votes;

	public User(String name, String password, String password2, String phone,
			String email, String location) throws InvalidPasswordException {
		super();
		this.name = name;
		if (!password.equals(password2)) {
			throw new InvalidPasswordException("You enter different password");
		}
		this.phone = phone;
		this.email = email;
		this.location = location;
		this.id = ++unique_id;
		this.votes=0;
		this.rating = 0;
	}

	public Vehicle addCar(String make, String model, int year, int rating,
			double price, boolean xenon, boolean abs){
		Vehicle car = new Car(this,make, model, year,
			 price, xenon, abs);
		return car;
		
	}
	
	public Service addService(String name, String location, String phone){
		Service service=new Service(name, this, location, phone);
		return service;
	}

	public void giveUserRating(int rating) {
		votes++;
		this.rating += rating;
	}
	public double getRating() {
		return rating/votes;
	}

	public void checkPassword(String password2) {
		if(!password.equals(password2)){
			try {
				throw new InvalidPasswordException("Wrong password ! ");
			} catch (InvalidPasswordException e) {
				System.out.println(e.getMessage());
			}
		}
	}
	
	
}
