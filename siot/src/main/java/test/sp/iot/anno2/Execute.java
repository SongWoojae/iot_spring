package test.sp.iot.anno2;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

@Service
public class Execute {
	
	@Autowired
	List<Worker> workerList ;
	
	@Autowired
	@Qualifier("map")
	Map<String, Object> map;
	
	Worker w;
	
	@Autowired
	public Execute(@Qualifier("designer")Worker w){
		this.w = w;
	}
	
	public void setWorker(Worker w){
		this.w = w;
	}
	
	
	
	public static void main(String[] args){
		ApplicationContext factory;
		String path = "classpath:/anno2/ioc.xml";
		factory = new ClassPathXmlApplicationContext(path);
		Execute e = (Execute) factory.getBean("execute");//@Service     new가 없다
//		for(Worker w : e.workerList){ //@Autowired   new가 없다
//			w.goToWork();
//			w.work();
//			w.getOffWork();
//		}	
//		Developer d = (Developer) factory.getBean("developer");
//		e.setWorker(d);
		e.w.work();
		
	}
}
