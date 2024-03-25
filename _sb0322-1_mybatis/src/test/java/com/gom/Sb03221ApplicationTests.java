package com.gom;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.junit.jupiter.api.Assertions.assertEquals;
import com.gom.dto.Emp;
import com.gom.mapper.DeptMapper;
import com.gom.mapper.EmpMapper;

@SpringBootTest
class Sb03221ApplicationTests {

	@Autowired
	EmpMapper eMapper;

	@Autowired
	DeptMapper dMapper;

	@Test
	void contextLoads() {
	}

	@Test
	@DisplayName("부서 조회")
	void DeptList() {
		System.out.println(dMapper.selectDeptList());
	}

	@Test
	@DisplayName("등록된 근로자의 수")
	void employeeCount() {
		System.out.println(eMapper.countEmployees());
	}

	@Test
	@DisplayName("부서번호별 근로자 리스트")
	void empListByDeptno() {

		for (Emp dto : eMapper.selectEmpListByDeptno(10)) {
			System.out.println(dto);
		}
	}

	@Test
	@DisplayName("근로자 조회")
	void selectEmployeeByEmpno() {
		System.out.println(eMapper.selectEmployeeByEmpno(124));
	}
	
	@Test
	@DisplayName("근로자 데이터 삽입")
	void insertEmployee() {
		Emp dto = new Emp(16, "gom", "gom22", 123, 123, 123, 10);
		eMapper.insertEmp(dto);
	}

	@Test
	@DisplayName("근로자 데이터 삭제")
	void deleteEmployee() {
		int before = eMapper.countEmployees();
		int id = 18;
		eMapper.deleteEmp(id);
		int after = eMapper.countEmployees();
		assertEquals(before - 1, after);
	}

	@Test
	@DisplayName("근로자 데이터 업데이트")
	void updateEmployee() {
		Emp dto = new Emp(124, "gomg12", "gom2", 123, 123, 123, 10);
		eMapper.updateEmp(dto);
	}

}
