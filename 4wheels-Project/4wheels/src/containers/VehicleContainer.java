package containers;

import interfaces.Vehicle;

import java.awt.List;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

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
