package com.digitalhouse.springboot.mvc.digitalhousemvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digitalhouse.springboot.mvc.digitalhousemvc.model.Product;
import com.digitalhouse.springboot.mvc.digitalhousemvc.service.ProductService;


@Controller
@RequestMapping(value = { "/product" })
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "/", "list" })
	public String index(Model model) {
		model.addAttribute("products", productService.findAll());
		return "product/index";
	}

	@RequestMapping(value = "create")
	public String create() {
		return "product/create";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(Product product) {
		productService.save(product);
		return "redirect:list";
	}

	@RequestMapping(value = "edit/{id}")
	public String edit(@PathVariable Long id, Model model) {
		model.addAttribute("product", productService.findById(id));
		return "product/edit";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(Product product) {
		productService.save(product);
		return "redirect:list";
	}

	@RequestMapping(value = "{id}")
	public String delete(@PathVariable Long id, Model model) {
		productService.delete(id);
		return "redirect:list";
	}

}