package busynesLogic.models;

import busynesLogic.interfaces.Vehicle;

public class Car implements Vehicle {




	private int id;
	private String photo;
	private String userEmail;
	private String make;
	private String model;
	private String variant;
	private String fuel;
	private String vehicleType;
	private String transmision;
	private int year;
	private int kilometer;
	private int price;
	private int power;
	private String location;
	private boolean auxiliaryHeating;
	private boolean cruiseControl;
	private boolean electricWindows;
	private boolean sunroof;
	private boolean powerAssistedSteering;
	private boolean mp3Interface;
	private boolean bluetooth;
	private boolean electricHeatedSeats;
	private boolean tunerRadio;
	private boolean onBoardComputer;
	private boolean rainSensor;
	private boolean multifunctionSteeringWheel;
	private boolean handsFreeKit;
	private boolean cdPlayer;
	private boolean electricSeatAdjustment;
	private boolean centralLocking;
	private boolean startStopSystem;
	private boolean electricSideMirror;
	private boolean ventilatedSeats;
	private boolean navigationSystem;
	private boolean headUpDisplay;
	private boolean laneDepartureWarningSystem;
	private boolean abs;
	private boolean fogLamp;
	private boolean ledHeadlights;
	private boolean fourWheelDrive;
	private boolean adaptiveCruiseControl;
	private boolean daytimeRunningLights;
	private boolean collisionAvoidanceSystem;
	private boolean lightSensor;
	private boolean immobilizer;
	private boolean adaptiveLighting;
	private boolean frontAirbags;
	private boolean sideAirbags;
	private boolean moreAirbags;
	private boolean rearSensors;
	private boolean frontSensors;
	private boolean camera;
	private boolean selfSteeringSystems;
	private boolean esp;
	private boolean xenonHeadlights;
	private boolean tractionControl;
	private boolean keylessEntry;

	
	
	@Override
	public String toString() {
		return "Car [photo=" + photo + ", userEmail=" + userEmail + ", make=" + make + ", model=" + model + ", variant="
				+ variant + ", fuel=" + fuel + ", vehicleType=" + vehicleType + ", transmision=" + transmision
				+ ", year=" + year + ", kilometer=" + kilometer + ", price=" + price + ", power=" + power
				+ ", location=" + location + ", auxiliaryHeating=" + auxiliaryHeating + ", cruiseControl="
				+ cruiseControl + ", electricWindows=" + electricWindows + ", sunroof=" + sunroof
				+ ", powerAssistedSteering=" + powerAssistedSteering + ", mp3Interface=" + mp3Interface + ", bluetooth="
				+ bluetooth + ", electricHeatedSeats=" + electricHeatedSeats + ", tunerRadio=" + tunerRadio
				+ ", onBoardComputer=" + onBoardComputer + ", rainSensor=" + rainSensor
				+ ", multifunctionSteeringWheel=" + multifunctionSteeringWheel + ", handsFreeKit=" + handsFreeKit
				+ ", cdPlayer=" + cdPlayer + ", electricSeatAdjustment=" + electricSeatAdjustment + ", centralLocking="
				+ centralLocking + ", startStopSystem=" + startStopSystem + ", electricSideMirror=" + electricSideMirror
				+ ", ventilatedSeats=" + ventilatedSeats + ", navigationSystem=" + navigationSystem + ", headUpDisplay="
				+ headUpDisplay + ", laneDepartureWarningSystem=" + laneDepartureWarningSystem + ", abs=" + abs
				+ ", fogLamp=" + fogLamp + ", ledHeadlights=" + ledHeadlights + ", fourWheelDrive=" + fourWheelDrive
				+ ", adaptiveCruiseControl=" + adaptiveCruiseControl + ", daytimeRunningLights=" + daytimeRunningLights
				+ ", collisionAvoidanceSystem=" + collisionAvoidanceSystem + ", lightSensor=" + lightSensor
				+ ", immobilizer=" + immobilizer + ", adaptiveLighting=" + adaptiveLighting + ", frontAirbags="
				+ frontAirbags + ", sideAirbags=" + sideAirbags + ", moreAirbags=" + moreAirbags + ", rearSensors="
				+ rearSensors + ", frontSensors=" + frontSensors + ", camera=" + camera + ", selfSteeringSystems="
				+ selfSteeringSystems + ", esp=" + esp + ", xenonHeadlights=" + xenonHeadlights + ", tractionControl="
				+ tractionControl + ", keylessEntry=" + keylessEntry + "]";
	}

	public Car(String email, String make, String model, String variant, String fuel, String vehicleType,
			String transmision, int year, int kilometer, int price, int power, String location,
			boolean auxiliaryHeating, boolean cruiseControl, boolean electricWindows, boolean sunroof,
			boolean powerAssistedSteering, boolean mp3Interface, boolean bluetooth, boolean electricHeatedSeats,
			boolean tunerRadio, boolean onBoardComputer, boolean rainSensor, boolean multifunctionSteeringWheel,
			boolean handsFreeKit, boolean cdPlayer, boolean electricSeatAdjustment, boolean centralLocking,
			boolean startStopSystem, boolean electricSideMirror, boolean ventilatedSeats, boolean navigationSystem,
			boolean headUpDisplay, boolean laneDepartureWarningSystem, boolean abs, boolean fogLamp,
			boolean ledHeadlights, boolean fourWheelDrive, boolean adaptiveCruiseControl,
			boolean daytimeRunningLights, boolean collisionAvoidanceSystem, boolean lightSensor,
			boolean immobilizer, boolean adaptiveLighting, boolean frontAirbags, boolean sideAirbags,
			boolean moreAirbags, boolean rearSensors, boolean frontSensors, boolean camera,
			boolean selfSteeringSystems, boolean esp, boolean xenonHeadlights, boolean tractionControl,
			boolean keylessEntry) {

		this.userEmail = email;
		this.make = make;
		this.model = model;
		this.variant = variant;
		this.fuel = fuel;
		this.vehicleType = vehicleType;
		this.transmision = transmision;
		this.year = year;
		this.kilometer = kilometer;
		this.price = price;
		this.power = power;
		this.location = location;
		this.auxiliaryHeating = auxiliaryHeating;
		this.cruiseControl = cruiseControl;
		this.electricWindows = electricWindows;
		this.sunroof = sunroof;
		this.powerAssistedSteering = powerAssistedSteering;
		this.mp3Interface = mp3Interface;
		this.bluetooth = bluetooth;
		this.electricHeatedSeats = electricHeatedSeats;
		this.tunerRadio = tunerRadio;
		this.onBoardComputer = onBoardComputer;
		this.rainSensor = rainSensor;
		this.multifunctionSteeringWheel = multifunctionSteeringWheel;
		this.handsFreeKit = handsFreeKit;
		this.cdPlayer = cdPlayer;
		this.electricSeatAdjustment = electricSeatAdjustment;
		this.centralLocking = centralLocking;
		this.startStopSystem = startStopSystem;
		this.electricSideMirror = electricSideMirror;
		this.ventilatedSeats = ventilatedSeats;
		this.navigationSystem = navigationSystem;
		this.headUpDisplay = headUpDisplay;
		this.laneDepartureWarningSystem = laneDepartureWarningSystem;
		this.abs = abs;
		this.fogLamp = fogLamp;
		this.ledHeadlights = ledHeadlights;
		this.fourWheelDrive = fourWheelDrive;
		this.adaptiveCruiseControl = adaptiveCruiseControl;
		this.daytimeRunningLights = daytimeRunningLights;
		this.collisionAvoidanceSystem = collisionAvoidanceSystem;
		this.lightSensor = lightSensor;
		this.immobilizer = immobilizer;
		this.adaptiveLighting = adaptiveLighting;
		this.frontAirbags = frontAirbags;
		this.sideAirbags = sideAirbags;
		this.moreAirbags = moreAirbags;
		this.rearSensors = rearSensors;
		this.frontSensors = frontSensors;
		this.camera = camera;
		this.selfSteeringSystems = selfSteeringSystems;
		this.esp = esp;
		this.xenonHeadlights = xenonHeadlights;
		this.tractionControl = tractionControl;
		this.keylessEntry = keylessEntry;
	}
	
	public Car(String email, String make2, String model2, int year2, int price2) {
		this.userEmail=email;
		this.make=make2;
		this.model=model2;
		this.year=year2;
		this.price=price2;
	}

	public String getUserEmail() {
		return userEmail;
	}



	public String getMake() {
		return make;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getModel() {
		return model;
	}



	public String getVariant() {
		return variant;
	}



	public String getFuel() {
		return fuel;
	}



	public String getVehicleType() {
		return vehicleType;
	}



	public String getTransmision() {
		return transmision;
	}



	public int getYear() {
		return year;
	}



	public int getKilometer() {
		return kilometer;
	}



	public int getPrice() {
		return price;
	}



	public int getPower() {
		return power;
	}



	public String getLocation() {
		return location;
	}



	public boolean isAuxiliaryHeating() {
		return auxiliaryHeating;
	}



	public boolean isCruiseControl() {
		return cruiseControl;
	}



	public boolean isElectricWindows() {
		return electricWindows;
	}



	public boolean isSunroof() {
		return sunroof;
	}



	public boolean isPowerAssistedSteering() {
		return powerAssistedSteering;
	}



	public boolean isMp3Interface() {
		return mp3Interface;
	}



	public boolean isBluetooth() {
		return bluetooth;
	}



	public boolean isElectricHeatedSeats() {
		return electricHeatedSeats;
	}



	public boolean isTunerRadio() {
		return tunerRadio;
	}



	public boolean isOnBoardComputer() {
		return onBoardComputer;
	}



	public boolean isRainSensor() {
		return rainSensor;
	}



	public boolean isMultifunctionSteeringWheel() {
		return multifunctionSteeringWheel;
	}



	public boolean isHandsFreeKit() {
		return handsFreeKit;
	}



	public boolean isCdPlayer() {
		return cdPlayer;
	}



	public boolean isElectricSeatAdjustment() {
		return electricSeatAdjustment;
	}



	public boolean isCentralLocking() {
		return centralLocking;
	}



	public boolean isStartStopSystem() {
		return startStopSystem;
	}



	public boolean isElectricSideMirror() {
		return electricSideMirror;
	}



	public boolean isVentilatedSeats() {
		return ventilatedSeats;
	}



	public boolean isNavigationSystem() {
		return navigationSystem;
	}



	public boolean isHeadUpDisplay() {
		return headUpDisplay;
	}



	public boolean isLaneDepartureWarningSystem() {
		return laneDepartureWarningSystem;
	}



	public boolean isAbs() {
		return abs;
	}



	public boolean isFogLamp() {
		return fogLamp;
	}

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public boolean isLedHeadlights() {
		return ledHeadlights;
	}



	public boolean isFourWheelDrive() {
		return fourWheelDrive;
	}



	public boolean isAdaptiveCruiseControl() {
		return adaptiveCruiseControl;
	}



	public boolean isDaytimeRunningLights() {
		return daytimeRunningLights;
	}



	public boolean isCollisionAvoidanceSystem() {
		return collisionAvoidanceSystem;
	}



	public boolean isLightSensor() {
		return lightSensor;
	}



	public boolean isImmobilizer() {
		return immobilizer;
	}



	public boolean isAdaptiveLighting() {
		return adaptiveLighting;
	}



	public boolean isFrontAirbags() {
		return frontAirbags;
	}



	public boolean isSideAirbags() {
		return sideAirbags;
	}



	public boolean isMoreAirbags() {
		return moreAirbags;
	}



	public boolean isRearSensors() {
		return rearSensors;
	}



	public boolean isFrontSensors() {
		return frontSensors;
	}



	public boolean isCamera() {
		return camera;
	}



	public boolean isSelfSteeringSystems() {
		return selfSteeringSystems;
	}



	public boolean isEsp() {
		return esp;
	}



	public boolean isXenonHeadlights() {
		return xenonHeadlights;
	}



	public boolean isTractionControl() {
		return tractionControl;
	}



	public boolean isKeylessEntry() {
		return keylessEntry;
	}



	
	public double getRating() {
		return this.getRating();
	}


}


