package test.sp.iot.xml1;

public class Kia {
	public Kia(){
		
	}
	public Car sellCar(Money money){
		System.out.println(money.getWon() + "을 받고 차를 팔았습니다.");
		Car car = new Car("K7");
		return car;
	}

}
