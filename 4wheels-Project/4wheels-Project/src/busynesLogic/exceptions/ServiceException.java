package busynesLogic.exceptions;

public class ServiceException extends Exception {

	private String msg;
	public ServiceException(String string) {
		msg=string;
	}
	
	@Override
	public String getMessage() {
		return msg;
	}

}
