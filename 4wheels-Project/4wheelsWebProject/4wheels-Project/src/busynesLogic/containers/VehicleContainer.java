package busynesLogic.containers;

import java.util.ArrayList;

import busynesLogic.interfaces.Vehicle;

public class VehicleContainer {

	private ArrayList<Vehicle> cars;
	
	public VehicleContainer() {
	
		cars= new ArrayList<>();
	}
	
	public void addCar(Vehicle car) {
		cars.add(car);
	}
	public void removeCar(Vehicle car){
		cars.remove(car);
	}
	
	public ArrayList<Vehicle> getCars() {
		//TODO collections...
		return (ArrayList<Vehicle>) cars.clone();
		
	}
	
}
