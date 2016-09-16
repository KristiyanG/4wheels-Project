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

@WebServlet("/EditProfileServlet")
public class EditProfileServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession ses = request.getSession();
		User user = (User) ses.getAttribute("user");
		String oldPass = request.getParameter("oldPassword");
		String newPass = request.getParameter("newPass");
		String repeatPass = request.getParameter("repeatPass");
		String location = request.getParameter("Location");
		String name = request.getParameter("username");
		String page = responsePage(ses, user, oldPass, newPass, repeatPass, location, name);
		if (page == null) {
			if (!UserDAO.getInstance().updateUser(name, newPass, location, user.getEmail())) {

				page = "jsp/EditProfile.jsp";
			}

		}
		if (page == null) {
			page = "jsp/ProfilePage.jsp";
		}
		response.sendRedirect(page);
	}

	private String responsePage(HttpSession ses, User user, String oldPass, String newPass, String repeatPass,
			String location, String name) {
		String page = null;
		if (oldPass == null || newPass == null || repeatPass == null) {

			ses.setAttribute("passwordErr", "Password field can not be empty !");
			return page = "jsp/EditProfile.jsp";
		}
		if (!user.isValidPassword(oldPass)) {
			ses.setAttribute("passwordErr", "Old password is not correct");
			return page = "jsp/EditProfile.jsp";
		}
		if (!newPass.equals(repeatPass)) {

			ses.setAttribute("passwordErr", "The new Passwords are not equals !");
			return page = "jsp/EditProfile.jsp";
		}
		if (repeatPass.length() < 4) {
			ses.setAttribute("passwordErr", "The new password is short !");
			return page = "jsp/EditProfile.jsp";
		}
		if (name == null) {
			name = (String) user.getName();
		}
		return page;
	}

}
