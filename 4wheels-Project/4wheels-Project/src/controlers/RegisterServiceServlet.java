package controlers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import busynesLogic.exceptions.ServiceException;
import busynesLogic.models.ServiceDAO;
import busynesLogic.models.User;

import java.io.IOException;

@WebServlet("/RegisterServiceServlet")
public class RegisterServiceServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In register Servlet");

		String name = request.getParameter("serviceName");
		String phone = request.getParameter("phone");
		String location = request.getParameter("serviceAdd");
		User u = (User) request.getSession().getAttribute("user");
		if (u != null) {
			String email = u.getEmail();
			System.out.println("USer email " + email);
			try {
				ServiceDAO.getInstance().registerService(name, email, phone, location);
				response.sendRedirect("jsp/ProfilePage.jsp");
			} catch (ServiceException e) {
				request.getSession().setAttribute("serviceErr", e.getMessage());
				response.sendRedirect("jsp/RegisterService.jsp");
			}
		}
		else{
			response.sendRedirect("pages/Login.html");
		}
	}
}
