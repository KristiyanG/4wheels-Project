package busynesLogic.models;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.exceptions.UserException;
import busynesLogic.interfaces.Vehicle;

public class User {

	private String name;
	private String phone;
	private String password;
	private double rating;
	private String email;
	private String location;
	private int votes;

	
	public User(String name, String phone, String password, String email, String location) {
		this.name = name;
		this.phone = phone;
		this.password = password;
		this.email = email;
		this.location = location;
		this.rating = 0;
	}

	public User(String name, String phone, String password, String email, String location,double rating) {
		this(name,phone,password,email,location);
		this.rating = rating;
	}
	

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) throws InvalidPasswordException {
		if(password.length()<4){
			throw new InvalidPasswordException("Password is short");
		}
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) throws UserException {
		if(isValidEmail(email)){
			throw new UserException("The email address is not valid");
		}
		this.email = email;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) throws UserException {
		if(location==null){
			throw new UserException("The location can not be null");
			
		}
		this.location = location;
	}

	public int getVotes() {
		return votes;
	}

	public void setVotes() {
		this.votes++;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}//TODO setRating up or down
	
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

	@Override
	public String toString() {
		return "User [name=" + name + ", phone=" + phone + ", password=" + password + ", id=" + ", rating="
				+ rating + ", email=" + email + ", location=" + location + ", votes=" + votes + "]";
	}

	public CharSequence getName() {
		return this.name;
	}
	public static boolean isValidEmail(String enteredEmail){
        String EMAIL_REGIX = "^[\\\\w!#$%&’*+/=?`{|}~^-]+(?:\\\\.[\\\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\\\.)+[a-zA-Z]{2,6}$";
        Pattern pattern = Pattern.compile(EMAIL_REGIX);
        Matcher matcher = pattern.matcher(enteredEmail);
        return ((!enteredEmail.isEmpty()) && (enteredEmail!=null) && (matcher.matches()));
	}
}
