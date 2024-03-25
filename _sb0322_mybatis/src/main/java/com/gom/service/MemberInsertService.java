package com.gom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dto.Member;
import com.gom.mapper.MemberMapper;

@Service
public class MemberInsertService {
	
	@Autowired
	private MemberMapper mMapper;


	public void InsertButton(Member member) {
		mMapper.insertMember(member);
	}
}
