package test.sp.iot.xml2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;


public class Execute {
	Worker w;
	
	public Execute(){}
	public void setWorker(Worker w){
		this.w = w;
	}
	
	public static void main(String[] args){
		ApplicationContext factory;
		String path = "classpath:/xml2/ioc.xml";
		factory = new ClassPathXmlApplicationContext(path); //xml을 읽어서 준비하기
		Execute e = (Execute) factory.getBean("ex");//@Service     new가 없다
		e.w.work();
		e.w.getOffWork();
		
	}
}
