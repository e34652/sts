package com.gom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dao.DeptDao;
import com.gom.dto.Dept;

@Service
public class DeptService {

@Autowired
private DeptDao dDao;
	
public List<Dept> LoadDeptList(){
	List<Dept> list = dDao.dSelectAll();
	return list;
}

}
