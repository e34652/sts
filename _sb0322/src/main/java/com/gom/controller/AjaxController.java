package com.gom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gom.service.ListLoadService;

@Controller
public class AjaxController {
	@Autowired 
	ListLoadService listLoadsvc;
	
	@GetMapping("/ajax1")
	public String ajax1() {
		return "ajax1";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		model.addAttribute("list", listLoadsvc);
		return "ajax1";
	}
}
