package com.steam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.steam.model.LoginStatusDto;
import com.steam.model.MemberDto;
import com.steam.service.member.MemberLoginService;
import com.steam.service.member.MemberSignUpService;

@Controller
public class UserInfoController {

	@Autowired
	LoginStatusDto loginStatusDto;
	
	@Autowired
	MemberLoginService mLoginS;
	
	@Autowired
	MemberSignUpService mSignUpS;
	
	@GetMapping("/myPage")
	public String myPage() {
		return "myPage";
	}
	
	@GetMapping("/myGames")
	public String myGames() {
		return "myGames";
	}
	
	@GetMapping("/myOrders")
	public String myOrders() {
		return "myOrders";
	}
	@GetMapping("/myInfo")
	public String myInfo() {
		return "myInfo";
	}

//	@PostMapping
	
}
