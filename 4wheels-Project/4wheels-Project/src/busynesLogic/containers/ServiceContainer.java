package busynesLogic.containers;

import java.util.ArrayList;

import busynesLogic.models.Service;


public class ServiceContainer {

	private static ArrayList<Service> services;
	
	public ServiceContainer() {
		this.services=new ArrayList<>();
	}
	
	public static void addService(Service service) {
		services.add(service);
		System.out.println(service.getName()+" has been added");
	}
	public static ArrayList<Service> getServices() {
//		TODO security
		return services;
	}
}
