package com.steam.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steam.model.ProductDto;
import com.steam.repository.ProductMapper;

@Service
public class ProductService {

	@Autowired
	ProductMapper pMapper;
	
	public void updateProduct(ProductDto product) {
		pMapper.updateProduct(product);
	}
	
	public void updateIntroduction(ProductDto product) {
		pMapper.updateIntroduction(product);
	}
	
	public void deleteProduct(long num) {
		pMapper.deleteProduct(num);
	}

	public void insertProduct(ProductDto product) {
		pMapper.insertProduct(product);
	}
	public int countProducts() {
		return pMapper.countProducts();
	}
}
