package controlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		User user = logIn.getUser(email, password);
	
		if(user != null){
			HttpSession ses = request.getSession();
			ses.setAttribute("user", user);
			response.sendRedirect("jsp/ProfilePage.jsp");
		}
		else{
			response.sendRedirect("pages/Login.html");
		}
		
	}

}
