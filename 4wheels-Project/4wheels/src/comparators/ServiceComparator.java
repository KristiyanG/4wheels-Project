package comparators;

import java.util.Comparator;

import models.Service;

public class ServiceComparator implements Comparator<Service> {

	@Override
	public int compare(Service arg0, Service arg1) {
		if(arg0.getRating()<arg1.getRating()){
			return 1;
		}
		else if(arg0.getRating()>arg1.getRating()){
			return -1;
		}
		else return 0;
	}

}
