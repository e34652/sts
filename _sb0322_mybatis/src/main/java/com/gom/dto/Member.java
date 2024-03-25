package com.gom.dto;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Member {

	private Long id;
	private String name;
	private int age;
	private String email;
	private String memo;
	
	public Member(String name, int age, String email, String memo) {
	
		this.name = name;
		this.age = age;
		this.email = email;
		this.memo = memo;
	}

	public Member(long id, String name, int age, String email, String memo) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.email = email;
		this.memo = memo;
	}
}
