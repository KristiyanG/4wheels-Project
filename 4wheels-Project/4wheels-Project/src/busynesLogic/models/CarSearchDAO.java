package busynesLogic.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CarSearchDAO {
	
	private static String TABLE_NAME = "cars";
	private static CarSearchDAO instance;
	private Connection connection;
	

	private CarSearchDAO() {
	}

	public static CarSearchDAO getInstance() {
		if (instance == null) {
			instance = new CarSearchDAO();
		}
		return instance;
	}

	public void searchCars(String make, String model, String vehicleType, 
			String fuelType, Integer fromYear, Integer toYear, Integer fromKm, Integer toKm, 
			Integer fromPrice, Integer toPrice, Integer fromPower, Integer toPower, 
			String transmision, Integer fromCapacity, Integer toCapacity, 
			String location, String color, boolean metalic, boolean auxiliary, 
			boolean bluetooth, boolean cdPlayer, boolean startStopSystem, 
			boolean sunroof, boolean cruiseControl, boolean heatedSeats, 
			boolean seatAdjustment, boolean onBoardComputer, boolean tunerRadio, 
			boolean electricWindows, boolean handsFree, boolean headUpDisplay, 
			boolean electricSideMirror, boolean ventilatedSeats, boolean mp3Interface, 
			boolean multifunctionWheel, boolean navigation, boolean centralLocking, 
			boolean rainSensor, boolean powerAssistedSteering, boolean abs, 
			boolean acruiseControl, boolean adaptiveLighting, boolean xenon, 
			boolean collisionAvoidanceSystem, boolean daytimeLights, boolean esp, 
			boolean laneWarningSystem, boolean fourWheelDrive, boolean imobilizer, 
			boolean keylessEntry, boolean fogLamp, boolean ledHeadlights, 
			boolean lightSensor, boolean tractionControl, boolean frontAirbags, 
			boolean sideAirbags, boolean moreAirbags, boolean rearSensor, 
			boolean frontSensor, boolean camera, boolean selfSteeringSystems) {
		
		String query = createQuery(make, model, vehicleType, fuelType, fromYear, toYear, fromKm, toKm,
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
		System.out.println(query);
		this.connection = DBManager.getInstance().getConnection();
		Statement st;
		try {
			st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st.executeQuery(query);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
			
	}

	private String createQuery(String make, String model, String vehicleType, String fuelType,
			Integer fromYear, Integer toYear, Integer fromKm, Integer toKm, Integer fromPrice, 
			Integer toPrice, Integer fromPower,	Integer toPower, String transmision,
			Integer fromCapacity, Integer toCapacity, String location, String color, 
			boolean metalic, boolean auxiliary,	boolean bluetooth, boolean cdPlayer, 
			boolean startStopSystem, boolean sunroof, boolean cruiseControl, boolean heatedSeats, 
			boolean seatAdjustment, boolean onBoardComputer, boolean tunerRadio, 
			boolean electricWindows, boolean handsFree, boolean headUpDisplay, 
			boolean electricSideMirror, boolean ventilatedSeats, boolean mp3Interface, 
			boolean multifunctionWheel, boolean navigation, boolean centralLocking, 
			boolean rainSensor, boolean powerAssistedSteering, boolean abs, boolean acruiseControl, 
			boolean adaptiveLighting, boolean xenon, boolean collisionAvoidanceSystem,
			boolean daytimeLights, boolean esp, boolean laneWarningSystem, 
			boolean fourWheelDrive, boolean imobilizer, boolean keylessEntry, 
			boolean fogLamp, boolean ledHeadlights, boolean lightSensor, boolean tractionControl,
			boolean frontAirbags, boolean sideAirbags, boolean moreAirbags, boolean rearSensor, 
			boolean frontSensor, boolean camera, boolean selfSteeringSystems) {
		// TODO Auto-generated method stub
		
		StringBuilder query = new StringBuilder();
		query.append("SELECT * FROM ").append(TABLE_NAME);
		
		boolean appendAnd = false;
		
		if(make!= null && !make.equals("Any")){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("make = ").append("'").append(make).append("'");
			appendAnd = true;
		}
		
		if(model != null && !model.equals("Any")){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("model = ").append("'").append(model).append("'");
			appendAnd = true;
		}
		
		if(vehicleType != null){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("vehicle_type = ").append("'").append(vehicleType).append("'");
			appendAnd = true;
		}
		
		if(fuelType != null){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("fuel_type = ").append("'").append(fuelType).append("'");
			appendAnd = true;
		}
		
		if(fromYear !=null && toYear != null){
			if(fromYear > toYear){
				throw new IllegalArgumentException("Inncorect chosen years.");
			}
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("first_registration ").append("BETWEEN '").append(fromYear)
			.append(" AND ").append(toYear).append("'");
			appendAnd = true;
		}
		
		if(fromKm != null && toKm != null){
			if(fromYear > toYear){
				throw new IllegalArgumentException("Inncorect chosen kilometer.");
			}
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("kilometer ").append("BETWEEN '").append(fromKm)
			.append(" AND ").append(toKm).append("'");
			appendAnd = true;	
		}
		if(fromPrice != null && toPrice != null){
			if(fromPrice > toPrice){
				throw new IllegalArgumentException("Inncorect chosen price.");
			}
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("price ").append("BETWEEN '").append(fromPrice)
			.append(" AND ").append(toPrice).append("'");
			appendAnd = true;	
		}
		if(fromPower != null && toPower != null){
			if(fromPower > toPower){
				throw new IllegalArgumentException("Inncorect chosen power capacity.");
			}
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("power_full ").append("BETWEEN '").append(fromPower)
			.append(" AND ").append(toPower).append("'");
			appendAnd = true;	
		}
		if(transmision != null){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("transmision = ").append("'").append(transmision).append("'");
			appendAnd = true;
		}
		if(fromCapacity != null && toCapacity != null){
			if(fromCapacity > toCapacity){
				throw new IllegalArgumentException("Inncorect chosen power cubic capacity.");
			}
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("cubic_capacity ").append("BETWEEN '").append(fromCapacity)
			.append(" AND ").append(toCapacity).append("'");
			appendAnd = true;	
		}
		if(location != null){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("location = ").append("'").append(location).append("'");
			appendAnd = true;
		}
		if(color != null){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("color = ").append("'").append(color).append("'");
			appendAnd = true;
		}
		if(metalic){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("metalic = ").append(metalic);
			appendAnd = true;
		}
		if(auxiliary){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("auxiliary_heating = ").append(auxiliary);
			appendAnd = true;
		}
		if(bluetooth){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("bluetooth = ").append(bluetooth);
			appendAnd = true;
		}
		if(cdPlayer){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("CD_player = ").append(cdPlayer);
			appendAnd = true;
		}
		if(startStopSystem){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("start_stop_system = ").append(startStopSystem);
			appendAnd = true;
		}
		if(sunroof){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("sunroof = ").append(sunroof);
			appendAnd = true;
		}
		if(cruiseControl){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("cruise_control = ").append(cruiseControl);
			appendAnd = true;
		}
		if(heatedSeats){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("electric_heated_seats = ").append(heatedSeats);
			appendAnd = true;
		}
		if(seatAdjustment){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("electric_seat_adjustment = ").append(seatAdjustment);
			appendAnd = true;
		}
		if(onBoardComputer){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("on_board_computer = ").append(onBoardComputer);
			appendAnd = true;
		}
		if(tunerRadio){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("tuner_radio = ").append(tunerRadio);
			appendAnd = true;
		}
		if(electricWindows){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("electric_windows = ").append(electricWindows);
			appendAnd = true;
		}
		if(handsFree){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("hands_free_kit = ").append(handsFree);
			appendAnd = true;
		}
		if(headUpDisplay){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("head_up_display = ").append(headUpDisplay);
			appendAnd = true;
		}
		if(electricSideMirror){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("electric_side_mirror = ").append(electricSideMirror);
			appendAnd = true;
		}
		if(ventilatedSeats){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("ventilated_seats = ").append(ventilatedSeats);
			appendAnd = true;
		}
		if(mp3Interface){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("MP3_interface = ").append(mp3Interface);
			appendAnd = true;
		}
		if(multifunctionWheel){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("multifunction_steering_wheel = ").append(multifunctionWheel);
			appendAnd = true;
		}
		if(navigation){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("navigation_system = ").append(navigation);
			appendAnd = true;
		}
		if(centralLocking){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("central_locking = ").append(centralLocking);
			appendAnd = true;
		}
		if(rainSensor){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("rain_sensor = ").append(rainSensor);
			appendAnd = true;
		}
		if(powerAssistedSteering){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("power_assisted_steering = ").append(powerAssistedSteering);
			appendAnd = true;
		}
		if(abs){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("ABS = ").append(abs);
			appendAnd = true;
		}
		if(acruiseControl){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("adaptive_cruise_control = ").append(acruiseControl);
			appendAnd = true;
		}
		if(adaptiveLighting){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("adaptive_lighting = ").append(adaptiveLighting);
			appendAnd = true;
		}
		if(xenon){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("xenon_headlights = ").append(xenon);
			appendAnd = true;
		}
		if(collisionAvoidanceSystem){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("collision_avoidance_system = ").append(collisionAvoidanceSystem);
			appendAnd = true;
		}
		if(daytimeLights){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("daytime_running_lights = ").append(daytimeLights);
			appendAnd = true;
		}
		if(esp){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("ESP = ").append(esp);
			appendAnd = true;
		}
		if(laneWarningSystem){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("lane_departure_warning_system = ").append(laneWarningSystem);
			appendAnd = true;
		}
		if(fourWheelDrive){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("four_wheel_drive = ").append(fourWheelDrive);
			appendAnd = true;
		}
		if(imobilizer){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("immobilizer = ").append(imobilizer);
			appendAnd = true;
		}
		if(keylessEntry){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("keyless_entry = ").append(keylessEntry);
			appendAnd = true;
		}
		if(fogLamp){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("fog_lamp = ").append(fogLamp);
			appendAnd = true;
		}
		if(ledHeadlights){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("LED_headlights = ").append(ledHeadlights);
			appendAnd = true;
		}
		if(lightSensor){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("light_sensor = ").append(lightSensor);
			appendAnd = true;
		}
		if(tractionControl){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("traction_control = ").append(tractionControl);
			appendAnd = true;
		}
		if(frontAirbags){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("front_Airbags = ").append(frontAirbags);
			appendAnd = true;
		}
		if(sideAirbags){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("side_Airbags = ").append(sideAirbags);
			appendAnd = true;
		}
		if(moreAirbags){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("more_Airbags = ").append(moreAirbags);
			appendAnd = true;
		}
		if(rearSensor){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("rear = ").append(rearSensor);
			appendAnd = true;
		}
		if(frontSensor){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("front = ").append(frontSensor);
			appendAnd = true;
		}
		if(camera){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("camera = ").append(camera);
			appendAnd = true;
		}
		if(selfSteeringSystems){
			query.append(appendAnd ? " AND " : " WHERE ");
			query.append("self_steering_systems = ").append(selfSteeringSystems);
			appendAnd = true;
		}
		
		query.append(" ;");
		
		return query.toString();		
	}

}
