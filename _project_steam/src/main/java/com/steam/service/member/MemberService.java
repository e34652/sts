package com.steam.service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

@Service
public class MemberService {

	@Autowired
	private MemberMapper mMapper;

	public void updateMember(MemberDto member) {
		mMapper.updateMember(member);
	}

	public void deleteMember(long num) {
		mMapper.deleteMember(num);
	}

	public void insertMember(MemberDto member) {
		mMapper.insertMember(member);
	}
	public int countMembers() {
		return mMapper.countMembers();
	}
}
