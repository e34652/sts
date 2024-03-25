package com.gom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dao.MemberDao;
import com.gom.dto.Member;

@Service
public class ListLoadService {
	@Autowired
	private MemberDao mDao;

	public List<Member> loadList() {
		List<Member> list = mDao.selectAll();
		return list;
	}
}

