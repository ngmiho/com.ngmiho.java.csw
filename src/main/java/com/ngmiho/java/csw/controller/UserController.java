package com.ngmiho.java.csw.controller;

import java.time.LocalDateTime;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ngmiho.java.csw.entity.Account;
import com.ngmiho.java.csw.entity.Category;
import com.ngmiho.java.csw.entity.Order;
import com.ngmiho.java.csw.entity.Product;
import com.ngmiho.java.csw.service.AccountService;
import com.ngmiho.java.csw.service.CategoryService;
import com.ngmiho.java.csw.service.ProductService;
import com.ngmiho.java.csw.service.impl.CategoryServiceImpl;
import com.ngmiho.java.csw.util.Data;

import jakarta.validation.Valid;

@Controller
public class UserController {
	
	@Autowired
	AccountService accountService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	
	Pageable pageable = PageRequest.of(0, 10);
	
	@GetMapping("/user-index")
	public String index() {
		return "layout/user/index";
	}
	
	@GetMapping("/home")
	public String getHome(Model model) {
		
		model.addAttribute("jsp", "_home.jsp");
		model.addAttribute("title", "Home");
		model.addAttribute("active", "1");
		return "forward:/user-index";
	}
	
	@PostMapping("/home")
	public String postHome(Model model) {

		model.addAttribute("jsp", "_home.jsp");
		model.addAttribute("active", "1");
		return "forward:/user-index";
	}
	
	@GetMapping("/best-sell")
	public String getBestSell(Model model) {

		model.addAttribute("jsp", "_best-sell.jsp");
		model.addAttribute("title", "Best Sell");
		model.addAttribute("active", "2");
		return "forward:/user-index";
	}
	
	@PostMapping("/best-sell")
	public String postBestSell(Model model) {

		model.addAttribute("jsp", "_best-sell.jsp");
		model.addAttribute("active", "2");
		
		return "forward:/user-index";
	}
	
	@GetMapping("/menu")
	public String getMenu(Model model, @RequestParam("category") Optional<String> category) {
		
				
		List<Category> categories = categoryService.findAll();
		String currentCategory = category.orElse(categories.get(0).getName());
		for (Category c : categories) {
			if (c.getName().equals(currentCategory)) {
				model.addAttribute("pages", (Page<Product>) productService.findByCategoryId(c.getId(), pageable));
			}
		}
		model.addAttribute("categories", categories);
		model.addAttribute("currentCategory", currentCategory);
		model.addAttribute("jsp", "_menu.jsp");
		model.addAttribute("title", "Menu");
		model.addAttribute("active", "3");
		return "forward:/user-index";
	}
	
	@PostMapping("/menu")
	public String postMenu(Model model) {
		
		

		model.addAttribute("jsp", "_menu.jsp");
		model.addAttribute("active", "3");
		return "forward:/user-index";
	}
	
	@GetMapping("/detail")
	public String getDetail(Model model, @RequestParam("id") Integer id) {
		
		
		
		model.addAttribute("product", productService.findById(id));
		model.addAttribute("jsp", "_detail.jsp");
		model.addAttribute("title", "Detail");
		model.addAttribute("active", "4");
		return "forward:/user-index";
	}
	
	@GetMapping("/contact")
	public String getContact(Model model) {

		model.addAttribute("jsp", "_contact.jsp");
		model.addAttribute("title", "Contact");
		model.addAttribute("active", "4");
		return "forward:/user-index";
	}
	
	@PostMapping("/contact")
	public String postContact(Model model) {

		model.addAttribute("jsp", "_contact.jsp");
		model.addAttribute("active", "4");
		return "forward:/user-index";
	}

}
