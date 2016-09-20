package busynesLogic.models;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Part;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CarDAO {

	private static final String CAR_TABLE_NAME = "cars";

	private static CarDAO instance;
	private static Connection connection;
	private static HashMap<String, ArrayList<Car>> cars=new HashMap<String, ArrayList<Car>>();

	private CarDAO() {
	}

	public static synchronized CarDAO getInstance() {
		if (instance == null) {
			instance = new CarDAO();
		}
		userCars();
		return instance;
	}

	public void insertCar(Car car) {
		if (car == null) {
			return;
		}
		addInDb(car);
	}

	private void addInDb(Car car) {
		try {
			this.connection = DBManager.getInstance().getConnection();
			Statement statement = connection.createStatement();
			// TODO check if email exist
			String insertQuery = createInsertQuery(car);
			System.out.println(insertQuery);
			PreparedStatement stm = connection.prepareStatement(insertQuery);
			stm.setString(1, car.getMake());
			stm.setString(2, car.getModel());
			stm.setString(3, car.getVariant());
			stm.setString(4, car.getUserEmail());
			stm.setInt(5, 0); // rating
			stm.setString(6, car.getVehicleType());
			stm.setInt(7, car.getYear());
			stm.setInt(8, car.getKilometer());
			stm.setInt(9, car.getPrice());
			stm.setInt(10, car.getPower());
			stm.setString(11, car.getFuel());
			stm.setString(12, car.getTransmision());
			stm.setInt(13, 9999);
			stm.setString(14, car.getLocation());
			stm.setString(15, car.getColor()); // color
			stm.setString(16, "delete this"); //region
			stm.setBoolean(17, true);
			stm.setBoolean(18, car.isAuxiliaryHeating());
			stm.setBoolean(19, car.isCruiseControl());
			stm.setBoolean(20, car.isSunroof());
			stm.setBoolean(21, car.isPowerAssistedSteering());
			stm.setBoolean(22, car.isMp3Interface());
			stm.setBoolean(23, car.isElectricWindows());
			stm.setBoolean(24, car.isBluetooth());
			stm.setBoolean(25, car.isElectricHeatedSeats());
			stm.setBoolean(26, car.isTunerRadio());
			stm.setBoolean(27, car.isOnBoardComputer());
			stm.setBoolean(28, car.isRainSensor());
			stm.setBoolean(29, car.isMultifunctionSteeringWheel());
			stm.setBoolean(30, car.isHandsFreeKit());
			stm.setBoolean(31, car.isCdPlayer());
			stm.setBoolean(32, car.isElectricSeatAdjustment());
			stm.setBoolean(33, car.isCentralLocking());
			stm.setBoolean(34, car.isStartStopSystem());
			stm.setBoolean(35, car.isElectricSideMirror());
			stm.setBoolean(36, car.isVentilatedSeats());
			stm.setBoolean(37, car.isNavigationSystem());
			stm.setBoolean(38, car.isHeadUpDisplay());
			stm.setBoolean(39, car.isAbs());
			stm.setBoolean(40, car.isFogLamp());
			stm.setBoolean(41, car.isLedHeadlights());
			stm.setBoolean(42, car.isFourWheelDrive());
			stm.setBoolean(43, car.isAdaptiveCruiseControl());
			stm.setBoolean(44, car.isDaytimeRunningLights());
			stm.setBoolean(45, car.isCollisionAvoidanceSystem());
			stm.setBoolean(46, car.isLightSensor());
			stm.setBoolean(47, car.isImmobilizer());
			stm.setBoolean(48, car.isAdaptiveLighting());
			stm.setBoolean(49, car.isFrontAirbags());
			stm.setBoolean(50, car.isSideAirbags());
			stm.setBoolean(51, car.isMoreAirbags());
			stm.setBoolean(52, car.isLaneDepartureWarningSystem());
			stm.setBoolean(53, car.isRearSensors());
			stm.setBoolean(54, car.isFrontSensors());
			stm.setBoolean(55, car.isCamera());
			stm.setBoolean(56, car.isSelfSteeringSystems());
			stm.setBoolean(57, car.isEsp());
			stm.setBoolean(58, car.isXenonHeadlights());
			stm.setBoolean(59, car.isTractionControl());
			stm.setBoolean(60, car.isKeylessEntry());
			stm.setString(61, car.getPhoto());
			System.out.println("Update Query " + stm.executeUpdate());

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		;

	}


	private static HashMap<String, ArrayList<Car>> userCars() {
		cars = new HashMap<String, ArrayList<Car>>();
		String sql = "Select id,make, model, variant, user_email, rating, vehicle_type, "
				+ "first_registration, kilometer, price, power_full, fuel_type, "
				+ "transmision, cubic_capacity, region, color, interior_color, "
				+ "metalic, auxiliary_heating, cruise_control, sunroof, "
				+ "power_assisted_steering, MP3_interface, electric_windows, "
				+ "bluetooth, electric_heated_seats, tuner_radio, on_board_computer, "
				+ "rain_sensor, multifunction_steering_wheel, hands_free_kit, "
				+ "CD_player, electric_seat_adjustment, central_locking, start_stop_system, "
				+ "electric_side_mirror, ventilated_seats, navigation_system, head_up_display, "
				+ "ABS, fog_lamp, LED_headlights, four_wheel_drive, adaptive_cruise_control, "
				+ "daytime_running_lights, collision_avoidance_system, light_sensor, immobilizer, "
				+ "adaptive_lighting, front_Airbags, side_Airbags, more_Airbags, "
				+ "lane_departure_warning_system, rear, front, camera, self_steering_systems, "
				+ "ESP, xenon_headlights, traction_control, keyless_entry,photo from cars order by price";
		connection = DBManager.getInstance().getConnection();
		try {

			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				String photo = rs.getString("photo");
				String email = rs.getString("user_email");
				String make = rs.getString("Make");
				String model = rs.getString("Model");
				String variant = rs.getString("Variant");
				String fuel = rs.getString("fuel_Type");
				String vehicleType = rs.getString("vehicle_type");
				String transmision = rs.getString("transmision");
				int year = Integer.valueOf(rs.getString("first_registration"));
				int kilometer = Integer.valueOf(rs.getString("kilometer"));
				int price = Integer.valueOf(rs.getString("price"));
				int power = Integer.valueOf(rs.getString("power"));
				String location = rs.getString("location");
				boolean auxiliaryHeating = rs.getBoolean("auxiliaryHeating");
				boolean cruiseControl = rs.getBoolean("cruise_control");
				boolean electricWindows = rs.getBoolean("electricWindows");
				boolean sunroof = rs.getBoolean("sunroof");
				boolean powerAssistedSteering = rs.getBoolean("powerAssistedSteering");
				boolean mp3Interface = rs.getBoolean("mp3Interface");
				boolean bluetooth = rs.getBoolean("bluetooth");
				boolean electricHeatedSeats = rs.getBoolean("electricHeatedSeats");
				boolean tunerRadio = rs.getBoolean("tuner_radio");
				boolean onBoardComputer = rs.getBoolean("on_boardComputer");
				boolean rainSensor = rs.getBoolean("rainSensor");
				boolean multifunctionSteeringWheel = rs.getBoolean("multifunction_steering_wheel");
				boolean handsFreeKit = rs.getBoolean("hands_free_kit");
				boolean cdPlayer = rs.getBoolean("cd_player");
				boolean electricSeatAdjustment = rs.getBoolean("electric_seat_adjustment");
				boolean centralLocking = rs.getBoolean("central_locking");
				boolean startStopSystem = rs.getBoolean("start_stop_system");
				boolean electricSideMirror = rs.getBoolean("electric_side_mirror");
				boolean ventilatedSeats = rs.getBoolean("ventilated_seats");
				boolean navigationSystem = rs.getBoolean("navigation_system");
				boolean headUpDisplay = rs.getBoolean("head_up_display");
				
				boolean laneDepartureWarningSystem = rs.getBoolean("lane_departure_warning_system");
				boolean abs = rs.getBoolean("abs");
				boolean fogLamp = rs.getBoolean("fog_lamp");
				boolean ledHeadlights = rs.getBoolean("led_headlights");
				boolean fourWheelDrive = rs.getBoolean("four_wheel_drive");
				boolean adaptiveCruiseControl = rs.getBoolean("adaptive_cruise_control");
				boolean daytimeRunningLights = rs.getBoolean("daytime_running_lights");
				boolean collisionAvoidanceSystem = rs.getBoolean("collision_avoidance_system");
				boolean lightSensor = rs.getBoolean("light_sensor");
				boolean immobilizer = rs.getBoolean("immobilizer");
				boolean adaptiveLighting = rs.getBoolean("adaptive_lighting");
				boolean frontAirbags = rs.getBoolean("front_airbags");
				boolean sideAirbags = rs.getBoolean("side_airbags");
				boolean moreAirbags = rs.getBoolean("more_airbags");
				boolean rearSensors = rs.getBoolean("rear_sensors");
				boolean frontSensors = rs.getBoolean("front_sensors");
				boolean camera = rs.getBoolean("camera");
				boolean selfSteeringSystems = rs.getBoolean("self_steering_systems");
				boolean esp = rs.getBoolean("esp");
				boolean xenonHeadlights = rs.getBoolean("xenon_headlights");
				boolean tractionControl = rs.getBoolean("traction_control");
				boolean keylessEntry = rs.getBoolean("keyless_entry");

				Car car = new Car (email,make,model,year,price);			
				car.setPhoto(photo);
				car.setId(rs.getInt("id"));
				
				if(!cars.containsKey(car.getUserEmail())){
					cars.put(car.getUserEmail(), new ArrayList<Car>());
				}
				cars.get(car.getUserEmail()).add(car);
				
			}
			System.out.println("Cars Loaded ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return cars;
	}

	public ArrayList<Car> userCars(String userEmail){
		
		System.out.println("User email   " +userEmail);
		ArrayList<Car> userCars = new ArrayList<Car>();
		
		for (Car car : cars.get(userEmail)) {
			userCars.add(car);
		}
		
		return userCars;
	}
	
	private String createInsertQuery(Car car) {

		String tableFields = "make, model, variant, user_email, rating, vehicle_type, "
				+ "first_registration, kilometer, price, power_full, fuel_type, "
				+ "transmision, cubic_capacity, region, color, interior_color, "
				+ "metalic, auxiliary_heating, cruise_control, sunroof, "
				+ "power_assisted_steering, MP3_interface, electric_windows, "
				+ "bluetooth, electric_heated_seats, tuner_radio, on_board_computer, "
				+ "rain_sensor, multifunction_steering_wheel, hands_free_kit, "
				+ "CD_player, electric_seat_adjustment, central_locking, start_stop_system, "
				+ "electric_side_mirror, ventilated_seats, navigation_system, head_up_display, "
				+ "ABS, fog_lamp, LED_headlights, four_wheel_drive, adaptive_cruise_control, "
				+ "daytime_running_lights, collision_avoidance_system, light_sensor, immobilizer, "
				+ "adaptive_lighting, front_Airbags, side_Airbags, more_Airbags, "
				+ "lane_departure_warning_system, rear, front, camera, self_steering_systems, "
				+ "ESP, xenon_headlights, traction_control, keyless_entry,photo";
		
		// + "photo1, photo2, photo3, photo4, photo5";

		return String.format(
				"INSERT INTO %s (%s) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
						+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
						+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)",
				CAR_TABLE_NAME, tableFields);
	}

	public Car getCar(int id) {
		Car car =null;
		for(ArrayList<Car> listCar :cars.values()){
			for(Car c :listCar){
				if(c.getId()==id){
					return car=c;
				}
			}
		}
		return car;
	}

	public void deleteCarById(int id) {
		this.connection=DBManager.getInstance().getConnection();
		String sql = "Delete from cars where id = ? ";
		try {
			PreparedStatement stm = connection.prepareStatement(sql);
			stm.setInt(1, id);
			stm.executeUpdate();
			for(ArrayList<Car> list:cars.values()){
				for(Car car :list){
					if(car.getId()==id){
						list.remove(car);
					
						return;
					}
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
