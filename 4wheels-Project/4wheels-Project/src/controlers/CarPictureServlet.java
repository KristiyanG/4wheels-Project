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

import busynesLogic.models.Car;
import busynesLogic.models.CarDAO;
import busynesLogic.models.User;
import busynesLogic.models.UserDAO;

@WebServlet("/CarPictureServlet")
public class CarPictureServlet extends HttpServlet {

	private static final String DEFAULT_PROFILE_PIC_JPEG = "car_default.png";

	public static void returnProfilePic(Car car, HttpServletResponse response) throws IOException {

		
			File profilePicFile = new File("carsPhotosPics", car.getPhoto());
			response.setContentLength((int) profilePicFile.length());
			String contentType = "image/"
					+ profilePicFile.getName().split("[.]")[profilePicFile.getName().split("[.]").length - 1];
			response.setContentType(contentType);
			OutputStream out = response.getOutputStream();
			Files.copy(profilePicFile.toPath(), out);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String idString=request.getParameter("id");
		int id = Integer.parseInt(idString);
		System.out.println(id);
		Car car =CarDAO.getInstance().getCar(id);
		
		if (car == null) {// session is new or expired
			System.out.println("This should not happen right now. Might happen later on other pages");
		} else {
			System.out.println("Car pic " +car.getPhoto());
			String userPic = car.getPhoto();
			
			if(userPic==null ||userPic.equals(car.getMake()+"-model-profile-pic.octet-stream")){
				userPic=DEFAULT_PROFILE_PIC_JPEG;
				car.setPhoto(userPic);
			}
			File profilePicFile = new File("userProfilePics", car.getPhoto());
			returnProfilePic(car, response);

		}

	}
}
