package controlers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.exceptions.UserException;
import busynesLogic.models.User;
import busynesLogic.models.UserDAO;


@WebServlet("/RegisterServlet")
@MultipartConfig
public class RegisterServlet extends HttpServlet {

	private static final double USER_RATING = 0;

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
		Part profilePic = request.getPart("profilePic");
		InputStream profilePicStream = profilePic.getInputStream();

		
		String page = null;
		if (name == null || password == null || phoneNumber == null || confirmPass == null || email == null
				|| location == null) {
			request.getSession().setAttribute("registerErr", "You have empty field ! ");
			page = "jsp/RegisterProfile.jsp";
		}
		
		if(page==null){
		try {
			registerUser(name, password, confirmPass, phoneNumber, email, location,profilePic,profilePicStream, request, response);
			page = "jsp/ProfilePage.jsp";
			
		} catch (InvalidPasswordException e) {
			request.getSession().setAttribute("registerErr",  e.getMessage());
			page = "jsp/RegisterProfile.jsp";
			System.out.println(e.getMessage());
		} catch (UserException e) {
			request.getSession().setAttribute("registerErr", e.getMessage());
			page = "jsp/RegisterProfile.jsp";;
		}
		}
		response.sendRedirect(page);
	}

	private void registerUser(String name, String password, String password2, String phone, String email,
			String location,Part profilePic,InputStream profilePicStream,HttpServletRequest request ,HttpServletResponse response) throws InvalidPasswordException, UserException, IOException, ServletException {
		
		if(!password.equals(password2)){
			throw new InvalidPasswordException("Password is not correct ! ");
		}
		 String contentType = profilePic.getContentType().split("/")[1];
		 
		String fileFullName =email+"-profile-pic."+ contentType;
		System.out.println(fileFullName);
		User user = new User(name,  phone, password, email, location,USER_RATING,fileFullName);
		UserDAO userCo = UserDAO.getInstance();
		if(!userCo.insertUser(user,password)){
			throw new UserException("User with this email already exists.");
		}else{
		File dir = new File("userProfilePics");
		if(!dir.exists()){
			dir.mkdir();
		}
		File profilePicFile = new File(dir, fileFullName);
		System.out.println("Try to save file with name: " + profilePicFile.getName());
		System.out.println("abs. path = " + profilePicFile.getAbsolutePath());
		Files.copy(profilePicStream, profilePicFile.toPath());
		user.setProfilePic(fileFullName);
		

		request.getSession().setAttribute("user", user);
		}
	}

}
