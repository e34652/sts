package com.steam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.steam.model.LoginStatusDto;
import com.steam.model.MemberDto;
import com.steam.service.member.MemberSearchingService;
import com.steam.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberManagementController {
	
	@Autowired
	MemberService mService;
	
	@Autowired
	MemberSearchingService msService;
	
	@Autowired
	LoginStatusDto loginStatusDto;
	
	@GetMapping("/memberManagement")
	public String memberManagement(Model model) {
		
		if(loginStatusDto.getLoginStatus().equals("admin")) {
			List<MemberDto> mList = msService.selectMemberList();
			model.addAttribute("MemberList" , mList);
			model.addAttribute("loginStatus", loginStatusDto.getLoginStatus());
			return "memberManagement"; // 실제 뷰 페이지의 경로를 반환
		}else {
			return "redirect:/";
		}
	}
	
	@GetMapping("/mDeleteButton")
	public String clickMemberDelete(@RequestParam("num")long num, Model model) {
		
		mService.deleteMember(num);
	
		return "redirect:/memberManagement";
	}
	
	@PostMapping("/mEditButton")
	@ResponseBody
	public MemberDto clickMemberEdit(@RequestParam("num") long num, Model model) {
	    MemberDto member = msService.selectMemberByNum(num);
	    return member;
	}
	
	@PostMapping("/mUpdateButton")
	public String clickMemberUpdate(
			@RequestParam("num") long num,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("nickname") String nickname, 
			@RequestParam("authority") String authority,
			@RequestParam("nationality") String nationality,
			Model model) {
		MemberDto member = MemberDto.builder().num(num).email(email).password(password).nickname(nickname).authority(authority).nationality(nationality).build(); 
		log.info(member.toString());
		mService.updateMember(member);
		return "redirect:/memberManagement";
	}
	
	@PostMapping("/mInsertButton")
	public String clickMemberInsert(
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("nickname") String nickname, 
			@RequestParam("authority") String authority,
			@RequestParam("nationality") String nationality,
			Model model) {
		MemberDto member = MemberDto.builder().email(email).password(password).nickname(nickname).authority(authority).nationality(nationality).build();
		mService.insertMember(member);
		return "redirect:/memberManagement";
	}
}
