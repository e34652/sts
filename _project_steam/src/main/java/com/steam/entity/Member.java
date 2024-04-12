package com.steam.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.NonNull;

@Entity
@Table(name = "member_tb", uniqueConstraints = @UniqueConstraint(columnNames = {"memberEmail", "memberNickname"}))
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="memberNum", columnDefinition = "bigint")
	long num;

	@NonNull
	@Column(name="memberEmail", unique=true, columnDefinition = "varchar(72)")
	private String email;
	
	@NonNull
	@Column(name="memberPassword", columnDefinition = "varchar(48)")
	private String password;
	
	@NonNull
	@Column(name="memberNickname", unique=true , columnDefinition = "varchar(72)")
	private String nickname;

	@Column(name="memberAuthority", columnDefinition = "varchar(24) default '0'")
	private String authority;
	
	@NonNull
	@Column(name="memberRegdate" , columnDefinition = "varchar(72)")
	private LocalDateTime regDate;
	
	@NonNull
	@Column(name="memberNationality" , columnDefinition = "varchar(48)")
	private String nationality;

}
