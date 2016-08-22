package containers;

import java.util.ArrayList;

import models.Service;

public class ServiceContainer {

	private ArrayList<Service> services;
	
	public ServiceContainer() {
		this.services=new ArrayList<>();
	}
	
	public void addService(Service service) {
		services.add(service);
		System.out.println(service.getName()+" has been added");
	}
	public ArrayList<Service> getServices() {
//		TODO security
		return services;
	}
}
