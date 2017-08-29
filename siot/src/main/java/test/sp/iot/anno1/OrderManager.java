package test.sp.iot.anno1;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("om")
public class OrderManager {
	
	private String name;
	@Autowired
	@Qualifier("BMW")
	private Maker maker;
	@Autowired
	private Money money;
	
	public OrderManager(){}
	public void order(){
		money.setWon(1000);
		Car car = maker.sellCar(money);
		System.out.println(car.getName());
	}

}
