package com.gom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gom.dto.Member;
import com.gom.service.MemberListService;
import com.gom.service.MemberDeleteService;
import com.gom.service.MemberInsertService;
import com.gom.service.MemberSelectService;
import com.gom.service.MemberUpdateService;


@Controller
public class MyController {

	
	@Autowired
	private MemberDeleteService mDelSvc;
	
	@Autowired
	private MemberUpdateService mUpdSvc;
	
	@Autowired
	private MemberInsertService mInsSvc;
	
	@Autowired
	private MemberSelectService mSelSvc;
	
	@Autowired
	private MemberListService mListLoder;
	
	@GetMapping("/")
	public String mainPage(Model model) {
		List<Member> mList = mListLoder.loadList();
		model.addAttribute("MemberList" , mList);
		return "root";
	}
	
	@GetMapping("/mDeleteButton")
	public String clickDel(@RequestParam("id")long id, Model model) {
		
		mDelSvc.DeleteButton(id);
		List<Member> mList = mListLoder.loadList();
		model.addAttribute("MemberList" , mList);
		return "root";
	}
	
	@GetMapping("/mEditButton")
	public String clickEdit(@RequestParam("id") long id, Model model) {
		Member member = mSelSvc.selectMember(id);
		List<Member> mList = mListLoder.loadList();
		model.addAttribute("SelectedMember" , member);
		model.addAttribute("MemberList" , mList);
		return "root";
	}
	
	@PostMapping("/mUpdateButton")
	public String clickUpdate(
			@RequestParam("memo") String memo,
			@RequestParam("age") int age,
			@RequestParam("name") String name, 
			@RequestParam("email") String email, Model model) {
		Member member = new Member(name, age, email, memo); 
		System.out.println(member);
		mUpdSvc.MemberUpdate(member);
		System.out.println("1");
		List<Member> mList = mListLoder.loadList();
		model.addAttribute("MemberList" , mList);
		return "root";
	}
	
	@PostMapping("/mInsertButton")
	public String clickInsert(
			@RequestParam("memo") String memo,
			@RequestParam("age") int age,
			@RequestParam("name") String name, 
			@RequestParam("email") String email, Model model) {
		Member member = new Member(name, age, email, memo); 
		mInsSvc.InsertButton(member);
		List<Member> mList = mListLoder.loadList();
		model.addAttribute("MemberList" , mList);
		return "root";
	}
}