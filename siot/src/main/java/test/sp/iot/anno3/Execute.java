package test.sp.iot.anno3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

@Service
public class Execute {
	@Autowired
	UserService us;
	

	public static void main(String[] args){
		
		ApplicationContext factory;
		String path = "anno3/ioc.xml";
		factory = new ClassPathXmlApplicationContext(path);
		Execute e = (Execute) factory.getBean("execute");
		User user = (User)factory.getBean("user");
		user.setId("test");
		user.setPwd("test");
		user.setName("길동이");
		
		String result = e.us.login(user);
		System.out.println(result);
//		User u = new User();
//		u.setId("test");
//		u.setName("길동이");
//		u.setPwd("1111");
		
//		UserService us = new UserServiceImpl();
//		String result = us.login();
//		System.out.println(result);
		
	}
}
