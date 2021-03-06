package test.sp.iot.anno2;

import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;

@Service
@Order(1)
public class Developer implements Worker{
	
	public void work() {
		System.out.println("개발자가 일을 합니다.");
		
	}
	public void getOffWork() {
		System.out.println("개발자가 퇴근");
	}
	@Override
	public void goToWork() {
		System.out.println("개발자가 출근");
		
	}
}
