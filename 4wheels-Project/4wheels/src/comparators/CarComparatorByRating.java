package comparators;



import interfaces.Vehicle;

import java.util.Comparator;


public class CarComparatorByRating implements Comparator<Vehicle>{

	@Override
	public int compare(Vehicle car0, Vehicle car1) {
		if(car1.getRating() > car0.getRating()){
			return 1;
		}
		if(car1.getRating() < car0.getRating())
		{
			return -1;
		}
		return 0;
	}

}
