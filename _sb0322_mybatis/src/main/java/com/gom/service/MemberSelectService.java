package com.gom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dto.Member;
import com.gom.mapper.MemberMapper;

@Service
public class MemberSelectService {
	
	@Autowired
	private MemberMapper mMapper;


	public Member selectMember(long id) {
		Member mDto = mMapper.selectMemberById(id);
		return mDto;
	}
}
