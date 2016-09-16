package controlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import busynesLogic.containers.UserContainer;
import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.exceptions.UserException;
import busynesLogic.models.User;
import busynesLogic.models.UserDAO;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("FullName");
		String password = request.getParameter("Password");
		String confirmPass = request.getParameter("ConfirmPassword");
		String phoneNumber = request.getParameter("PhoneNumber");
		String email = request.getParameter("EmailAddres");
		String location = request.getParameter("Location");
		
		System.out.println(name + " " + password + " " + confirmPass + " " + phoneNumber +" " + email + " " + location);
		
		String page = null;
		if (name == null || password == null || phoneNumber == null || confirmPass == null || email == null
				|| location == null) {
			page = "pages/Profile.html";
		}
		try {
			registerUser(name, password, confirmPass, phoneNumber, email, location);
			page = "pages/Profile.html";
			
			HttpSession ses = request.getSession();
			ses.setAttribute("email",email);
			
		} catch (InvalidPasswordException e) {
			page = "pages/RegisterProfile.html";
			System.out.println("Greshka v parolata");
			System.out.println(e.getMessage());
		} catch (UserException e) {
			page = "pages/RegisterProfile.html";
			System.out.println("Greshka v usera");
		}

		response.sendRedirect(page);
	}

	private void registerUser(String name, String password, String password2, String phone, String email,
			String location) throws InvalidPasswordException, UserException {
		
		if(!password.equals(password2)){
			throw new InvalidPasswordException("Parolite ne suvpadat");
		}
		
		User user = new User(name,  phone, password, email, location);
		UserDAO userCo = UserDAO.getInstance();
		if(!userCo.insertUser(user)){
			throw new UserException("User with this email already exists.");
		}
	}

}
