package test.sp.iot.xml1;

public class OrderManager2 implements OrderInterface {
	
	private Benz benz;
	
	public OrderManager2(){
		this.benz = new Benz();
	}
	
	public void setKia(Benz benz){
		this.benz = benz;
	}
	
	public void order(){
		Money m = new Money(100000);
		Car c = this.benz.sellCar(m);
	}

	@Override
	public void setKia(Kia kia) {
		
	}

	
	

}
