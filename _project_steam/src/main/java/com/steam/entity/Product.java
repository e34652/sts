package com.steam.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import lombok.NonNull;

@Entity
@Table(name = "product_tb")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="productNum", columnDefinition = "bigint")
	long num;

	@NonNull
	@Column(name="productName", columnDefinition = "varchar(72)")
	private String name;
	
	@NonNull
	@Column(name="productGenre", columnDefinition = "varchar(30)")
	private String genre;
	
	@Column(name="productPrice", columnDefinition = "int")
	private int price;

	@Column(name="productReleasedate", columnDefinition = "varchar(48) default '미정'")
	private String releasedate;

	@NonNull
	@Column(name="productSimple" , columnDefinition = "varchar(1000) default '내용 없음'")
	private String simple;
	
	@NonNull
	@Column(name="productDetail" , columnDefinition = "text default '내용 없음'")
	private String detail;

}
