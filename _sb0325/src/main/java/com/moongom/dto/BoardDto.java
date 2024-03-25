package com.moongom.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class BoardDto { // Member 테이블의 Dto이지만 시간상 Board로 작성

private int id;
private String email;
private String password;
private String name;
private String regdate;
}
