package com.steam.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.steam.model.ProductDto;
import com.steam.repository.ProductMapper;

@Controller
public class ProductSearchingService {

	@Autowired
	ProductMapper pMapper;
	
	public List<ProductDto> selectProductList() {
		List<ProductDto> list = pMapper.selectProductList();
		return list;
	}

	public ProductDto selectProductByNum(long num) {
		ProductDto mDto = pMapper.selectProductByNum(num);
		return mDto;
	}
	public ProductDto selectIntroductionByNum(long num) {
		ProductDto mDto = pMapper.selectProductByNum(num);
		return mDto;
	}

	public ProductDto selectProductByGenre(String genre) {
		ProductDto mDto = pMapper.selectProductByGenre(genre);
		return mDto;
	}

	public ProductDto selectProductByEmail(String name) {
		ProductDto mDto = pMapper.selectProductByName(name);
		return mDto;
	}
}
