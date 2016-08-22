package containers;

import java.util.HashMap;

import models.User;
import exceptions.NoSuchUserException;

public class UserContainer {

	private HashMap<String,User> users;
	
	public UserContainer() {
		this.users = new HashMap<String, User>();
	}
	
	public  User getUsers(String email,String password) {
		if(!users.containsKey(email)){
			try {
				throw new NoSuchUserException();
			} catch (NoSuchUserException e) {
				System.out.println(e.getMessage());
			}
		}
		User user = users.get(email);
		user.checkPassword(password);
		return user;
	}

	public void addUser(String email, User user) {
		users.put(email, user);
		
	}
	public boolean containsEmail(String email){
		return users.containsKey(email);
	}
}
