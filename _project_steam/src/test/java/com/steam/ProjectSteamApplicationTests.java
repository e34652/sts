package com.steam;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.steam.model.MemberDto;
import com.steam.model.ProductDto;
import com.steam.repository.MemberMapper;
import com.steam.repository.ProductMapper;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@Slf4j
class ProjectSteamApplicationTests {
	
// 상품 테스트	
//	@Autowired
//	ProductMapper pMapper;
//	
//	
//	@Test
//	@Order(1)
//	@DisplayName("전체조회")
//	void selectAll() {
//		log.info("mList: {}", pMapper.selectProductList());
//	}
//	
//	@Test
//	@Order(2)
//	@DisplayName("상품등록")
//	void insertProduct() {
//		ProductDto product = ProductDto.builder().name("abc").genre("Rhythm").releaseDate("추후 출시 예정").price(9999).simple("리듬게임").detail("재미있다").build();
//		
//		pMapper.insertProduct(product);
//	}
//	
//	@Test
//	@Order(3)
//	@DisplayName("상품갱신")
//	void updateProduct() {
//		ProductDto product = ProductDto.builder().num(3).name("abc123").genre("Rhythm").releaseDate("추후 출시 예정").price(9999).simple("리듬게임").detail("재미있다").build();
//		pMapper.updateProduct(product);
//	}
//	
//	@Test
//	@Order(4)
//	@DisplayName("상품조회")
//	void selectProductByNum() {
//		log.info("member: {}", pMapper.selectProductByNum(3));
//	}
//	@Test
//	@Order(5)
//	@DisplayName("상품삭제")
//	void deleteProduct() {
//		pMapper.deleteProduct(2);	
//	}
//
//	@Test
//	@Order(6)
//	@DisplayName("카운트")
//	void count() {
//		System.out.println(pMapper.countProducts());
//	}
	
	
// 멤버 테스트	
	@Autowired
	MemberMapper mMapper;
	
	
	@Test
	@Order(1)
	@DisplayName("전체조회")
	void selectAll() {
		log.info("mList: {}", mMapper.selectMemberList());
	}
//	
//	@Test
//	@Order(2)
//	@DisplayName("회원등록")
//	void insertMember() {
//		MemberDto member = MemberDto.builder()
//				.authority(0)
//				.email("156@123")
//				.nationality("한국")
//				.nickname("문곰문곰문곰")
//				.password("123")
//				.build();
//		
//		mMapper.insertMember(member);
//	}
//	
//	@Test
//	@Order(3)
//	@DisplayName("회원갱신")
//	void updateMember() {
//		MemberDto member = MemberDto.builder().
//				num(5).
//				authority(0).
//				email("144@123").
//				nationality("한국국").
//				nickname("문곰문곰문곰2").
//				password("123").
//				build();
//		mMapper.updateMember(member);
//	}
//	
	@Test
	@Order(4)
	@DisplayName("회원조회")
	void selectMemberByEmail() {
		log.info("member: {}", mMapper.selectMemberByNum(1));
	}
//	@Test
//	@Order(5)
//	@DisplayName("회원삭제")
//	void deleteMember() {
//		mMapper.deleteMember(1);
//	}
//
	@Test
	@Order(6)
	@DisplayName("카운트")
	void count() {
		System.out.println(mMapper.countMembers());
	}

}
