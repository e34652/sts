package com.steam.model;



import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Setter
@Getter
public class LoginStatusDto {
	private String loginStatus = "visitor";

}
