package controlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import busynesLogic.exceptions.UserException;
import busynesLogic.models.User;
import busynesLogic.models.UserDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		doGet(request, response);
				
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");
		
		UserDAO logIn = UserDAO.getInstance();
		System.out.println(email + "--- "+ password);
		
		User user=null;
		try {
			user = logIn.getUser(email, password);
		} catch (UserException e) {
			request.getSession().setAttribute("loginErr", "Invadil username or password !");
			response.sendRedirect("jsp/Login.jsp");
		}
	
		if(user != null){
			HttpSession ses = request.getSession();
			System.out.println("User pic "+ user.getProfilePic());
			ses.setAttribute("user", user);
			System.out.println("Rating" +user.getRating());
			response.sendRedirect("jsp/ProfilePage.jsp");
		}
		else{
			request.getSession().setAttribute("loginErr", "Invadil username or password !");
			response.sendRedirect("jsp/Login.jsp");

		}
		
	}

}
