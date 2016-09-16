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

@WebServlet("/DeleteProfileServlet")
public class DeleteProfileServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession ses = request.getSession();
		User u = (User) ses.getAttribute("user");
		String email = u.getEmail();
		UserDAO.getInstance().deleteUser(email);
		ses.invalidate();
//		TODO return in home page jsp
		response.sendRedirect("HomePageFindCar.html");
	}

}
