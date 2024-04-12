package com.steam.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.LoginStatusDto;
import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberLoginService {

	@Autowired
	MemberMapper mMapper;
	
	@Autowired
	LoginStatusDto loginStat;
	
	public boolean setLoginStatus(String email, String pw) {
        
		
		MemberDto mDto = mMapper.selectMemberByEmail(email);
		if (email != null && pw != null && mDto != null) {
			if (mDto.getEmail().equals(email) && mDto.getPassword().equals(pw)) {
				loginStat.setLoginStatus("member");
				if(mDto.getAuthority().equals("admin")) {
					loginStat.setLoginStatus("admin");
					return true;
				}
				return true;
				}
		}
		loginStat.setLoginStatus("visitor");
		return false;
	}
}
