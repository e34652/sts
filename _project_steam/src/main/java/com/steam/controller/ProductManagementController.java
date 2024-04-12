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
import com.steam.model.ProductDto;
import com.steam.service.product.ProductSearchingService;
import com.steam.service.product.ProductService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ProductManagementController {

	@Autowired
	ProductService pService;

	@Autowired
	ProductSearchingService psService;

	@Autowired
	LoginStatusDto loginStatusDto;

	@GetMapping("/productManagement")
	public String productManagement(Model model) {

		if (loginStatusDto.getLoginStatus().equals("admin")) {
			List<ProductDto> pList = psService.selectProductList();
			model.addAttribute("ProductList", pList);
			model.addAttribute("loginStatus", loginStatusDto.getLoginStatus());
			return "productManagement"; // 실제 뷰 페이지의 경로를 반환
		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/editIntroduction")
	public String editIntroduction(@RequestParam("num") long num, Model model) {

		ProductDto pDto = psService.selectIntroductionByNum(num);
		model.addAttribute("simple", pDto.getSimple());
		model.addAttribute("detail", pDto.getDetail());
		model.addAttribute("num", num);
		return "editIntroduction";
	}

	@PostMapping("/submitIntroduction")
	public String editIntroduction(
			@RequestParam("simple") String simple, 
			@RequestParam("detail") String detail,
			@RequestParam("num") long num, Model model) {

		ProductDto pDto = ProductDto.builder().simple(simple).detail(detail).num(num).build();
		pService.updateIntroduction(pDto);
		model.addAttribute("close","true");
		return "editIntroduction";
	}

	@GetMapping("/pDeleteButton")
	public String clickProductDelete(@RequestParam("num") long num, Model model) {

		pService.deleteProduct(num);

		return "redirect:/productManagement";
	}

	@PostMapping("/pEditButton")
	@ResponseBody
	public ProductDto clickProductEdit(@RequestParam("num") long num, Model model) {
		ProductDto product = psService.selectProductByNum(num);
		return product;
	}

	@PostMapping("/pUpdateButton")
	public String clickProductUpdate(
			@RequestParam("num") long num, 
			@RequestParam("name") String name,
			@RequestParam("genre") String genre, 
			@RequestParam("price") int price,
			@RequestParam("releasedate") String releasedate, 
			@RequestParam("simple") String simple,
			@RequestParam("detail") String detail, Model model) {
		ProductDto product = ProductDto.builder().
				name(name).
				genre(genre).
				price(price).
				releasedate(releasedate)
				.simple(simple).
				detail(detail).build();
		log.info(product.toString());
		pService.updateProduct(product);
		return "redirect:/productManagement";
	}

	@PostMapping("/pInsertButton")
	public String clickProductInsert(
			@RequestParam("name") String name, 
			@RequestParam("genre") String genre,
			@RequestParam("price") int price, 
			@RequestParam("releasedate") String releasedate,
			@RequestParam("simple") String simple, 
			@RequestParam("detail") String detail, Model model) {
		ProductDto product = ProductDto.builder().
				name(name).
				genre(genre).
				price(price).
				releasedate(releasedate).
				simple(simple).
				detail(detail).build();
		pService.insertProduct(product);
		return "redirect:/productManagement";
	}

//	@PostMapping

}
