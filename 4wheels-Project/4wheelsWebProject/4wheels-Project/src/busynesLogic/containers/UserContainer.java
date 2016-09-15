package busynesLogic.containers;

import java.util.HashMap;

import busynesLogic.exceptions.NoSuchUserException;
import busynesLogic.models.User;


public class UserContainer {

	private static HashMap<String, User> users = new HashMap<>();
	
//	public UserContainer() {
//		this.users = new HashMap<String, User>();
//	}
	
	public static User getUsers(String email,String password) {
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

	public static void addUser(String email, User user) {
		users.put(email, user);
		
	}
	
	public boolean containsEmail(String email){
		return users.containsKey(email);
	}
}
