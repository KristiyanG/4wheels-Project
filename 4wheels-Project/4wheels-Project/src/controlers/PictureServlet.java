package controlers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import busynesLogic.models.User;
import busynesLogic.models.UserDAO;

@WebServlet("/PictureServlet")
public class PictureServlet extends HttpServlet {

	private static final String DEFAULT_PROFILE_PIC_JPEG = "profile-pic.jpeg";

	public static void returnProfilePic(User u, HttpServletResponse response) throws IOException {

		
			File profilePicFile = new File("userProfilePics", u.getProfilePic());
			response.setContentLength((int) profilePicFile.length());
			String contentType = "image/"
					+ profilePicFile.getName().split("[.]")[profilePicFile.getName().split("[.]").length - 1];
			response.setContentType(contentType);
			OutputStream out = response.getOutputStream();
			Files.copy(profilePicFile.toPath(), out);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User user = (User) request.getSession().getAttribute("user");

		if (user == null) {// session is new or expired
			System.out.println("This should not happen right now. Might happen later on other pages");
		} else {
			System.out.println("User pic " +user.getProfilePic());
			String userPic = user.getProfilePic();
<<<<<<< HEAD
			if(userPic.equals(user.getEmail()+"-profile-pic.octet-stream")){
=======
			if(userPic==null ||userPic.equals(user.getEmail()+"-profile-pic.octet-stream")){
>>>>>>> 8fda4d63bdc1e1b0a52e6a88c3cacf93a6739bd3
				userPic=DEFAULT_PROFILE_PIC_JPEG;
				user.setProfilePic(userPic);
			}
			File profilePicFile = new File("userProfilePics", user.getProfilePic());
			returnProfilePic(user, response);

		}

	}
}
