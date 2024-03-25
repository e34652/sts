package com.gom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dao.MemberDao;

@Service
public class MemberDeleteService {

	@Autowired
	private MemberDao mDao;


	public void DeleteButton(long id) {
		mDao.delete(id);
	}

}
