package com.gom.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.gom.dto.Dept;

@Repository
public class DeptDao {

	private JdbcTemplate jdbcTemplate;

	public DeptDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Dept> dSelectAll() {
		List<Dept> list = jdbcTemplate.query("select * from dept", new RowMapper<Dept>() {

			@Override
			public Dept mapRow(ResultSet rs, int rowNum) throws SQLException {
				Dept dept = new Dept(rs.getInt("DEPTNO"), rs.getString("DNAME"), rs.getString("LOC"));
				return dept;
			}
		});
		return list;
	}
}
