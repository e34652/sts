package com.gom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gom.dto.Emp;
import com.gom.mapper.EmpMapper;

@Service
public class EmpService {
	
	@Autowired
	private EmpMapper eMapper;

	public void eUpdateService(Emp emp) {
		eMapper.updateEmp(emp);
	}
	
	public void eInsertService(Emp emp) {
		eMapper.insertEmp(emp);
	}

	public void eDeleteService(int empno) {
		eMapper.deleteEmp(empno);
	}
	
	public Emp eSelectByEmpnoService(int empno){
		Emp emp = eMapper.selectEmployeeByEmpno(empno);
		return emp;
	}
	
	public List<Emp> eListByDeptnoService(int deptno){
		List<Emp> list = eMapper.selectEmpListByDeptno(deptno);
		return list;
	}
}
