package controlers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import busynesLogic.models.Car;
import busynesLogic.models.CarDAO;
import busynesLogic.models.User;

@WebServlet("/AddCarServlet")
public class AddCarServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Car car = createCar(request);
		CarDAO accesser = CarDAO.getInstance();
		accesser.insertCar(car);
				
		request.getRequestDispatcher("pages/Profile.html").forward(request, response);
	}

	private Car createCar(HttpServletRequest request) {
		String make = request.getParameter("Make");
		String model = request.getParameter("Model");
		String variant = request.getParameter("Variant");
		String fuel = request.getParameter("fuelType");
		String vehicleType = request.getParameter("vehicleType");
		String transmision = request.getParameter("transmision");
		int year = Integer.valueOf(request.getParameter("year"));
		int kilometer = Integer.valueOf(request.getParameter("kilometer"));
		int price = Integer.valueOf(request.getParameter("price"));
		int power = Integer.valueOf(request.getParameter("power"));
		String location = request.getParameter("location");
		String color = request.getParameter("color");
		boolean auxiliaryHeating = request.getParameter("auxiliaryHeating") != null;
		boolean cruiseControl = request.getParameter("cruise_control") != null;
		boolean electricWindows = request.getParameter("electricWindows") != null;
		boolean sunroof = request.getParameter("sunroof") != null;
		boolean powerAssistedSteering = request.getParameter("powerAssistedSteering") != null;
		boolean mp3Interface = request.getParameter("mp3Interface") != null;
		boolean bluetooth = request.getParameter("bluetooth" ) != null;
		boolean electricHeatedSeats = request.getParameter("electricHeatedSeats") != null;
		boolean tunerRadio = request.getParameter("tuner_radio") != null;
		boolean onBoardComputer = request.getParameter("on_boardComputer") != null;
		boolean rainSensor = request.getParameter("rainSensor") != null;
		boolean multifunctionSteeringWheel = request.getParameter("multifunction_steering_wheel") != null;
		boolean handsFreeKit = request.getParameter("hands_free_kit") != null;
		boolean cdPlayer = request.getParameter("cd_player") != null;
		boolean electricSeatAdjustment = request.getParameter("electric_seat_adjustment") != null;
		boolean centralLocking = request.getParameter("central_locking") != null;
		boolean startStopSystem = request.getParameter("start_stop_system") != null;
		boolean electricSideMirror = request.getParameter("electric_side_mirror") != null;
		boolean ventilatedSeats = request.getParameter("ventilated_seats") != null;
		boolean navigationSystem = request.getParameter("navigation_system") != null;
		boolean headUpDisplay = request.getParameter("head_up_display") != null;;
		boolean laneDepartureWarningSystem = request.getParameter("lane_departure_warning_system") != null;
		boolean abs = request.getParameter("abs") != null;
		boolean fogLamp = request.getParameter("fog_lamp") != null;
		boolean ledHeadlights = request.getParameter("led_headlights") != null;
		boolean fourWheelDrive = request.getParameter("four_wheel_drive") != null;
		boolean adaptiveCruiseControl = request.getParameter("adaptive_cruise_control") != null;
		boolean daytimeRunningLights = request.getParameter("daytime_running_lights") != null;
		boolean collisionAvoidanceSystem = request.getParameter("collision_avoidance_system") != null;
		boolean lightSensor = request.getParameter("light_sensor") != null;
		boolean immobilizer = request.getParameter("immobilizer") != null;
		boolean adaptiveLighting = request.getParameter("adaptive_lighting") != null;
		boolean frontAirbags = request.getParameter("front_airbags") != null;
		boolean sideAirbags = request.getParameter("side_airbags") != null;
		boolean moreAirbags = request.getParameter("more_airbags") != null;
		boolean rearSensors = request.getParameter("rear_sensors") != null;
		boolean frontSensors = request.getParameter("front_sensors") != null;
		boolean camera = request.getParameter("camera") != null;
		boolean selfSteeringSystems  = request.getParameter("self_steering_systems") != null;
		boolean esp = request.getParameter("esp") != null;
		boolean xenonHeadlights = request.getParameter("xenon_headlights") != null;
		boolean tractionControl = request.getParameter("traction_control") != null;
		boolean keylessEntry = request.getParameter("keyless_entry") != null;
		
		String email = ((User)request.getSession(false).getAttribute("user")).getEmail();
		
		Car car = new Car(email, make, model, variant, fuel, vehicleType, color, transmision, year, kilometer, price, power, location,
				auxiliaryHeating, cruiseControl, electricWindows, sunroof, powerAssistedSteering, mp3Interface, bluetooth,
				electricHeatedSeats, tunerRadio, onBoardComputer, rainSensor, multifunctionSteeringWheel,
				handsFreeKit, cdPlayer, electricSeatAdjustment, centralLocking, startStopSystem, electricSideMirror, 
				ventilatedSeats, navigationSystem, headUpDisplay, laneDepartureWarningSystem, abs, fogLamp, ledHeadlights, 
				fourWheelDrive, adaptiveCruiseControl, daytimeRunningLights, collisionAvoidanceSystem, lightSensor, 
				immobilizer, adaptiveLighting, frontAirbags, sideAirbags, moreAirbags, rearSensors, frontSensors,
				camera, selfSteeringSystems, esp, xenonHeadlights, tractionControl, keylessEntry);
		return car;
	}

}
