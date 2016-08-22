package core;

import interfaces.Vehicle;

import java.io.Console;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

import comparators.CarComparatorByRating;
import comparators.ServiceComparator;
import models.Car;
import models.Service;
import models.User;
import containers.ServiceContainer;
import containers.UserContainer;
import containers.VehicleContainer;
import exceptions.InvalidPasswordException;
import exceptions.UserException;

public class WebDemo {

	private VehicleContainer vc;
	private UserContainer uc;
	private ServiceContainer serviceContainer;
	private User user;

	public WebDemo(VehicleContainer vc, UserContainer uc,
			ServiceContainer service) {
		super();
		this.vc = vc;
		this.user = null;
		this.uc = uc;
		this.serviceContainer = service;
	}

	public void run() {
		Scanner sc = new Scanner(System.in);
		while (true) {
//			System.out.println("Please enter a command");
			String line = sc.nextLine();
			if (line.equalsIgnoreCase("Exit")) {
				break;
			}
			String[] params = line.split("[, ]+");
			switch (params[0]) {
			case "RegisterUser":
				registerUser(params);
				break;
			case "RegisterService":
				registerService(params);
				break;
			case "SearchCar":
				break;
			case "SearchService":
				break;
			case "TopCars":
				printTopCars();
				break;
			case "TopService":
				printTopService();
				break;
			case "AddCar":
				addCar(params);
				break;
			case "LogIn":
				logIn(params);
				break;
			case "LogOut":
				user = null;
				System.out.println("User loged out!");
				break;
			default:
				System.out.println("Wrong command...");
				break;
			}
		}

	}

	private void printTopService() {
		
		ArrayList<Service> services =serviceContainer.getServices();
		services.sort(new ServiceComparator());
		for(Service s:services){
			System.out.println(s);
		}
	}

	private void printTopCars() {
	
		ArrayList<Vehicle> sortedVehicles = vc.getCars();
		sortedVehicles.sort(new CarComparatorByRating());
		for (Vehicle vehicle : sortedVehicles) {

			System.out.println(vehicle);
		}
	}

	private void logIn(String[] params) {
		checkLoginNegative();
		String email = params[1];
		String password = params[2];
		this.user = uc.getUsers(email, password);
	}

	private void checkLoginNegative() {
		if (user != null) {
			try {
				throw new UserException(
						"User is already login. You should logOut first");
			} catch (UserException e) {
				System.out.println(e.getMessage());
			}
		}
	}

	private void addCar(String[] params) {

		try {
			checkLogIn("car");
		} catch (UserException e) {

			System.out.println(e.getMessage());
			return;
		}

		String make = params[1];
		String model = params[2];
		int year = Integer.valueOf(params[3]);
		double price = Double.valueOf(params[4]);
		boolean xenon = Boolean.valueOf(params[5]);
		boolean abs = Boolean.valueOf(params[6]);

		Car car = new Car(this.user, make, model, year, price, xenon, abs);
		vc.addCar(car);
		System.out.println("New car added .");
	}

	private void registerService(String[] params) {
		try {
			checkLogIn("service");
		} catch (UserException e) {

			System.out.println(e.getMessage());
			return;
		}
		String name = params[1];
		String location = params[2];
		String phone = params[3];

		Service service = new Service(name, user, location, phone);
		serviceContainer.addService(service);

	}

	private void checkLogIn(String model) throws UserException {
		if (user == null) {

			throw new UserException("You should be log in to register " + model
					+ "!!!");

		}
	}

	private void registerUser(String[] params) {
		checkLoginNegative();

		String name = params[1];
		String password = params[2];
		String password2 = params[3];
		String phone = params[4];
		String email = params[5];
		String location = params[6];
		try {
			if (uc.containsEmail(email)) {
				throw new UserException("This user already exist ! ");
			}

			this.user = new User(name, password, password2, phone, email,
					location);
			uc.addUser(email, user);
			System.out.println("Wellcome! " + name);
		} catch (InvalidPasswordException e) {
			System.out.println(e.getMessage());
		} catch (UserException e) {
			System.out.println(e.getMessage());
		}
	}

}
