package connectors;

import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.exceptions.UserException;
import busynesLogic.models.User;

public class Demo {

	public static void main(String[] args) {
		System.out.println("---");
		UserCo user = new UserCo();
		user.connectToDB();
		User u=null;
		try {
			u = new User("Pesho","123456789","123456789","0895647","adasdasdassd@abv.bg","Sofia");
		} catch (InvalidPasswordException e) {
			System.out.println(e.getMessage());;
		} catch (UserException e) {
			System.out.println(e.getMessage());;
		}
		if(user.insertUser(u)){
			System.out.println("Add user");
		}
	}
}