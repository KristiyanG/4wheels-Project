package controlers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import busynesLogic.models.CarSearchDAO;

@WebServlet("/CarSearchServlet")
public class CarSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String make = request.getParameter("Make");
		String model = request.getParameter("Model");
		String vehicleType = request.getParameter("vehicle_type");
		String fuelType = request.getParameter("fuel_type");
		Integer fromYear = request.getParameter("from_year") != null ? 
				Integer.valueOf(request.getParameter("from_year")) : null;
				
		Integer toYear= request.getParameter("to_year") != null ? 				
				Integer.valueOf(request.getParameter("to_year")) : null;
				
		Integer fromKm = request.getParameter("from_km") != null ? 				
				Integer.valueOf(request.getParameter("from_km")) : null;
				
		Integer toKm = request.getParameter("to_km") != null ? 				
				Integer.valueOf(request.getParameter("to_km")) : null;
				
		Integer fromPrice = request.getParameter("from_price") != null ? 
				Integer.valueOf(request.getParameter("from_price")) : null;
				
		Integer toPrice = request.getParameter("to_price") != null ? 				
				Integer.valueOf(request.getParameter("to_price")) : null;
				
		Integer fromPower = request.getParameter("from_power") != null ? 				
				Integer.valueOf(request.getParameter("from_power")) : null;
				
		Integer toPower = request.getParameter("to_power") != null ? 				
				Integer.valueOf(request.getParameter("to_power")) : null;
				
		String transmision = request.getParameter("transmision");
		
		Integer fromCapacity = request.getParameter("from_capacity") != null ?
				Integer.valueOf(request.getParameter("from_capacity")) : null;
				
		Integer toCapacity = request.getParameter("to_capacity") != null ?
				Integer.valueOf(request.getParameter("to_capacity")) : null;
				
		String location = request.getParameter("location");
		String color = request.getParameter("car_color");
		boolean metalic = request.getParameter("metalic") != null;
		boolean auxiliary = request.getParameter("auxiliary")!= null;
		boolean bluetooth = request.getParameter("bluetooth")!= null;
		boolean cdPlayer= request.getParameter("cd_player")!= null;
		boolean startStopSystem = request.getParameter("start_stop_system")!= null;
		boolean sunroof = request.getParameter("sunroof")!= null;
		boolean cruiseControl = request.getParameter("cruise_control")!= null;
		boolean heatedSeats = request.getParameter("electronic_heated_seats")!= null;
		boolean seatAdjustment = request.getParameter("electric_seat_adjustment")!= null;
		boolean onBoardComputer = request.getParameter("on_board_computer")!= null;
		boolean tunerRadio = request.getParameter("tuner_radio")!= null;
		boolean electricWindows = request.getParameter("electric_windows")!= null;
		boolean  handsFree = request.getParameter("hands_free")!= null;
		boolean  headUpDisplay = request.getParameter("head_up_display")!= null;
		boolean electricSideMirror = request.getParameter("electric_side_mirror")!= null;
		boolean ventilatedSeats = request.getParameter("ventilated_seats")!= null;
		boolean mp3Interface = request.getParameter("mp3_interface")!= null;
		boolean multifunctionWheel = request.getParameter("multifunction_steering_wheel")!= null;
		boolean navigation = request.getParameter("navigation_system")!= null;
		boolean centralLocking= request.getParameter("central_locking")!= null;
		boolean rainSensor = request.getParameter("rain_sensor")!= null;
		boolean powerAssistedSteering = request.getParameter("power_assisted_steering")!= null;
		boolean abs = request.getParameter("abs")!= null;
		boolean acruiseControl = request.getParameter("adaptive_cruise_control")!= null;
		boolean adaptiveLighting = request.getParameter("adaptive_lighting")!= null;
		boolean xenon = request.getParameter("xenon")!= null;
		boolean collisionAvoidanceSystem = request.getParameter("collision_avoidance_system")!= null;
		boolean daytimeLights = request.getParameter("daytime_running_lights")!= null;
		boolean esp = request.getParameter("esp")!= null;
		boolean laneWarningSystem = request.getParameter("lane_departure_warning_system")!= null;
		boolean fourWheelDrive = request.getParameter("four_wheel_drive")!= null;
		boolean imobilizer = request.getParameter("imobilizer")!= null;
		boolean keylessEntry = request.getParameter("keyless_entry")!= null;
		boolean fogLamp = request.getParameter("fog_lamp")!= null;
		boolean ledHeadlights = request.getParameter("led_headlights")!= null;
		boolean lightSensor = request.getParameter("light_sensor")!= null;
		boolean tractionControl = request.getParameter("traction_control")!= null;
		boolean frontAirbags = request.getParameter("front_airbags")!= null;
		boolean sideAirbags = request.getParameter("side_airbags")!= null;
		boolean moreAirbags = request.getParameter("more_airbags")!= null;
		boolean rearSensor = request.getParameter("rear_sensor")!= null;
		boolean frontSensor = request.getParameter("front_sensor")!= null;
		boolean camera = request.getParameter("camera")!= null;
		boolean selfSteeringSystems= request.getParameter("self_steering_systems")!= null;

		CarSearchDAO searcher = CarSearchDAO.getInstance();
		searcher.searchCars(make, model, vehicleType, fuelType, fromYear, toYear, fromKm, toKm,
				fromPrice, toPrice, fromPower, toPower, transmision, fromCapacity, toCapacity,
				location, color, metalic, auxiliary, bluetooth, cdPlayer, startStopSystem, sunroof,
				cruiseControl, heatedSeats, seatAdjustment, onBoardComputer, tunerRadio, 
				electricWindows, handsFree, headUpDisplay, electricSideMirror, ventilatedSeats, 
				mp3Interface, multifunctionWheel, navigation, centralLocking, rainSensor,
				powerAssistedSteering, abs, acruiseControl, adaptiveLighting, xenon, 
				collisionAvoidanceSystem, daytimeLights, esp, laneWarningSystem, fourWheelDrive, 
				imobilizer, keylessEntry, fogLamp, ledHeadlights, lightSensor, tractionControl,
				frontAirbags, sideAirbags, moreAirbags, rearSensor, frontSensor, 
				camera, selfSteeringSystems);
		
	}
}
