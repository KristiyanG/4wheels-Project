package busynesLogic.models;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

public class CarDAO {

	private static final String CAR_TABLE_NAME = "cars";
	
	private static CarDAO instance;
	private Connection connection;
	
	private CarDAO(){}
	
	public static synchronized CarDAO getInstance(){
		if(instance == null){
			instance = new CarDAO();
		}
		return instance;
	}

	public void insertCar(Car car) {
		if(car == null){
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
			
			System.out.println("Update Query " + stm.executeUpdate() );
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		};
		
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
				+ "ESP, xenon_headlights, traction_control, keyless_entry";//, "
//				+ "photo1, photo2, photo3, photo4, photo5";
		
		//TODO fix values - user_id, rating, cubic, interior_color, front & rear (sensors), 
		//TODO add color, metalic
		//TODO add ? for pics
		
		return String.format("INSERT INTO %s (%s) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
				CAR_TABLE_NAME, tableFields);
	}
}
