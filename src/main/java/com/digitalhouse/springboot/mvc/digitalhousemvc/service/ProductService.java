package com.digitalhouse.springboot.mvc.digitalhousemvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digitalhouse.springboot.mvc.digitalhousemvc.model.Product;
import com.digitalhouse.springboot.mvc.digitalhousemvc.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	public Object findAll() {
		return productRepository.findAll();
	}

	public Product findById(Long id) {
		return productRepository.findOne(id);
	}

	public Product save(Product product) {
		return productRepository.save(product);
	}

	public void delete(Long id) {
		productRepository.delete(id);
	}

}