package test.sp.iot.anno3;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

	public String login(User user){
		if("test".equals(user.getId())){
			if("test".equals(user.getPwd())){
				return user.getName() + "님 로그인 성공하셨습니다.";
			}
			return "비밀번호가 틀렸습니다.";
		
		}
		return "아이디를 확인해주세요";
	}

	
}
