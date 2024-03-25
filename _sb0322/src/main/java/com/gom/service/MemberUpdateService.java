package com.gom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dao.MemberDao;
import com.gom.dto.Member;

@Service
public class MemberUpdateService {
	
	@Autowired
	private MemberDao mDao;


	public void MemberUpdate(Member member) {
		mDao.update(member);
	}
}
