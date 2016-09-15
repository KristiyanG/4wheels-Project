package controlers;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import busynesLogic.containers.UserContainer;
import busynesLogic.models.User;
import busynesLogic.models.UserDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		
//		doGet(request, response);
		
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");
		UserDAO logIn = UserDAO.getInstance();
		System.out.println(email + "--- "+ password);
		User user = logIn.getUser(email,password);
		
		
		if(user != null){
			
			HttpSession ses = request.getSession();
			ses.setAttribute("email",email);
			response.sendRedirect("pages/Profile.html");
			response.addCookie(new Cookie("krasi", "Krasimir Stoev"));
		
		}
		else{
			response.sendRedirect("pages/Login.html");
		}
	}

}
