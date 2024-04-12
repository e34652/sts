package com.steam.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.steam.model.MemberDto;


@Mapper
public interface MemberMapper {

	public MemberDto selectMemberByNum(long num);
	
	public MemberDto selectMemberByEmail(String email);
	
	public MemberDto selectMemberByNickname(String nickname);

	public List<MemberDto> selectMemberList();
	
	public int insertMember(MemberDto member);
	
	public int updateMember(MemberDto member);
	
	public int deleteMember(long num);
	
	public int countMembers();
	

		
	
}
