package core;

import containers.ServiceContainer;
import containers.UserContainer;
import containers.VehicleContainer;

public class Demo {

	public static void main(String[] args) {
		VehicleContainer vc= new VehicleContainer();
		UserContainer uc= new UserContainer();
		ServiceContainer sc=new ServiceContainer();
		WebDemo wd= new WebDemo(vc,uc,sc);
		System.out.println("dsadsad");
		wd.run();
		
	}
}
