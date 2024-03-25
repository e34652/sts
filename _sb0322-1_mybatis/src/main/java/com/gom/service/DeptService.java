package com.gom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dto.Dept;
import com.gom.mapper.DeptMapper;

@Service
public class DeptService {

@Autowired
private DeptMapper dMapper;
	
public List<Dept> LoadDeptList(){
	List<Dept> list = dMapper.selectDeptList();
	return list;
}

}
