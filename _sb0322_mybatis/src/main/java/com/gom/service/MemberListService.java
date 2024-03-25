package com.gom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dto.Member;
import com.gom.mapper.MemberMapper;

@Service
public class MemberListService {
	
	@Autowired
	private MemberMapper mMapper;

	public List<Member> loadList() {
		List<Member> list = mMapper.selectMemberList();
		return list;
	}
}

