package controlers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServiceServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
//		String name = request.getParameter("FullName");
//		String password = request.getParameter("Password");
//		String confirmPass = request.getParameter("ConfirmPassword");
//		String phoneNumber = request.getParameter("PhoneNumber");
//		String email = request.getParameter("EmailAddres");
//		String location = request.getParameter("City");
//		
//		String message = registerUser(name, password, confirmPass, phoneNumber, email, location);
//		String html = "<h2>" + message + "</h2>";
//		response.getWriter().append();
	}
}
