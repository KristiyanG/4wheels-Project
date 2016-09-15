package controlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import busynesLogic.containers.UserContainer;
import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.exceptions.UserException;
import busynesLogic.models.User;
import busynesLogic.models.UserDAO;
/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String name = request.getParameter("FullName");
		String password = request.getParameter("Password");
		String confirmPass = request.getParameter("ConfirmPassword");
		String phoneNumber = request.getParameter("PhoneNumber");
		String email = request.getParameter("EmailAddres");
		String location = request.getParameter("Location");
		String page=null;
		if(name==null||password==null||phoneNumber==null||confirmPass==null||email==null||location==null){
			page="pages/Profile.html";
		}
		 try {
			registerUser(name, password, confirmPass, phoneNumber, email, location);
			page="pages/Profile.html";
		} catch (InvalidPasswordException e) {
			System.out.println("NE stava proveri parolata");
			page="pages/RegisterProfile.html";
		} catch (UserException e) {

			System.out.println("NE stava proveri Email ");
			System.out.println(e.getMessage());
			page="pages/RegisterProfile.html";
		}
		
		 response.sendRedirect(page);
	}
	
	private void registerUser(String name, String password, String password2, String phone,
			String email, String location) throws InvalidPasswordException, UserException{
		UserDAO userCo= UserDAO.getInstance();
		User user =  new User(name, password, password2, phone, email, location);
		if(userCo.insertUser(user)){
			System.out.println("registrirah go");
		}
		
		else {
			System.out.println("User with this email already exists !! ");
			throw new UserException("User with this email already exists ! " );
		}
		
		
		
		
	}

}