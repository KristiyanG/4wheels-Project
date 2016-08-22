package exceptions;

public class InvalidPasswordException extends Exception {
	
	public InvalidPasswordException(String mesg) {
		super(mesg);
	}
}
