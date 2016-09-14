package busynesLogic.exceptions;

public class NoSuchUserException extends Exception {

	@Override
	public String getMessage() {
		return "No such user, try again " ;
	}
	
}
