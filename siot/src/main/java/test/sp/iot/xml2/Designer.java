package test.sp.iot.xml2;

import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;


public class Designer implements Worker{
	
	
	public void work() {
		System.out.println("디자이너가 일을 합니다.");
		
	}
	public void getOffWork() {
		System.out.println("디자이너가 퇴근");
	}
	@Override
	public void goToWork() {
		System.out.println("디자이너가 출근");
		
	}

}
