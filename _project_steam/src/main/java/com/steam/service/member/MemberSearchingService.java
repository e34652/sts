package com.steam.service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.MemberDto;
import com.steam.repository.MemberMapper;

@Service
public class MemberSearchingService {

	@Autowired 
	MemberMapper mMapper;
	
	public List<MemberDto> selectMemberList() {
		List<MemberDto> list = mMapper.selectMemberList();
		return list;
	}

	public MemberDto selectMemberByNum(long num) {
		MemberDto mDto = mMapper.selectMemberByNum(num);
		return mDto;
	}

	public MemberDto selectMemberByNickname(String nickname) {
		MemberDto mDto = mMapper.selectMemberByEmail(nickname);
		return mDto;
	}

	public MemberDto selectMemberByEmail(String email) {
		MemberDto mDto = mMapper.selectMemberByEmail(email);
		return mDto;
	}
}
