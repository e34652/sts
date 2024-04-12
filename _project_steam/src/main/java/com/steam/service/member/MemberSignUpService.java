package com.steam.service.member;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

@Service
public class MemberSignUpService {
	@Autowired
	MemberMapper mMapper;

	public int createAccount(MemberDto mDto) {
		
		return mMapper.insertMember(mDto);
	}

}
