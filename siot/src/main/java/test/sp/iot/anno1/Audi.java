package test.sp.iot.anno1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Audi implements Maker{

	public Audi(){}
	@Autowired
	private Car car;
	
	public Car sellCar(Money money) {
		System.out.println("아우디에서" + money.getWon() + "원에 차 매매");
		Car car = new Car("A6");
		return car;
	}

}
