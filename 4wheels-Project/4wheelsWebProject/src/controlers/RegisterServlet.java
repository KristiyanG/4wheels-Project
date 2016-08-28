package controlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import busynesLogic.containers.UserContainer;
import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.models.User;
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
		// TODO Auto-generated method stub
//		doGet(request, response);
//		
//		System.out.println(request.getLocalName());
//		System.out.println(request.getParameter("FirstName"));
//		System.out.println(request.getParameter("Password"));
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("pages/Profile.html");
//		dispatcher.forward(request, response);
		
//		for (Entry<String, String[]> ent : request.getParameterMap().entrySet()) {
//			
//			System.out.println(ent.getKey());
//			for (String str : ent.getValue()) {
//				System.out.println("	"+str);
//			}
//			
//		}
//		System.out.println(request.getParameter("LastName"));
		
		String name = request.getParameter("FullName");
		String password = request.getParameter("Password");
		String confirmPass = request.getParameter("ConfirmPassword");
		String phoneNumber = request.getParameter("PhoneNumber");
		String email = request.getParameter("EmailAddres");
		String location = request.getParameter("City");
		
		String message = registerUser(name, password, confirmPass, phoneNumber, email, location);
		String html = "<h2>" + message + "</h2>";
		response.getWriter().append(html);
	}
	
	private String registerUser(String name, String password, String password2, String phone,
			String email, String location){
		User user = null;
		try {
			user = new User(name, password, password2, phone, email, location);
		} catch (InvalidPasswordException e) {

			return e.getMessage();
		}
		
		UserContainer.addUser(email, user);
		
		System.out.println(user);
		
		return "Wellcome " +  name + "!";
	}

}
