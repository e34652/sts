package com.gom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dao.MemberDao;
import com.gom.dto.Member;

@Service
public class MemberSelectService {
	
	@Autowired
	private MemberDao mDao;


	public Member selectMember(long id) {
		Member mDto = mDao.selectById(id);
		return mDto;
	}
}
