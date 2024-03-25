package com.moongom;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.moongom.dto.BoardDto;
import com.moongom.mapper.BoardMapper;

@SpringBootTest
class Sb0325ApplicationTests {
	
	@Autowired
	BoardMapper boardMapper;
	
	@Test
	void contextLoads() {
	}
	
	@Test
	@DisplayName("member 테이블의 개수")
	void memberCount() {
		System.out.println(boardMapper.selectCount());
	}
	@Test
	@DisplayName("member 리스트")
	void memberSelectAll() {
		for(BoardDto dto : boardMapper.selectBoardList()) {
			System.out.println(dto);
		}
	}
	
//	@Test
//	@DisplayName("member 데이터 삽입")
//	void memberInsert() {
//		BoardDto dto = BoardDto.builder().email("moongom@gommoon.com").name("문곰").password("123").build();
//		boardMapper.insertBoard(dto);
//		}
	
//	@Test
//	@DisplayName("member 데이터 삭제")
//	void memberDelete() {
//		int before = boardMapper.selectCount();
//		int idx = 4;
//		boardMapper.deleteBoard(idx);
//		int after = boardMapper.selectCount();
//		assertEquals(before-1, after);
//		}
	
	@Test
	@DisplayName("member 데이터 업데이트")
	void memberInsert() {
		BoardDto dto = BoardDto.builder().id(11).email("moongom1@gommoon.com").name("문곰2").password("1233").build();
		boardMapper.insertBoard(dto);
		}
	
}
