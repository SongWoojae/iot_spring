package test.sp.iot.anno1;

import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;

@Named
public class BMW implements Maker{

	public BMW(){}
	@Autowired
	private Car car;
	
	public Car sellCar(Money money) {
		System.out.println("BMW에서" + money.getWon() + "원에 차 매매");
		Car car = new Car("E Class");
		return car;
	}

}
