package com.ngmiho.java.csw.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.ngmiho.java.csw.entity.Account;
import com.ngmiho.java.csw.entity.Order;
import com.ngmiho.java.csw.entity.Product;
import com.ngmiho.java.csw.service.AccountService;
import com.ngmiho.java.csw.service.OrderService;
import com.ngmiho.java.csw.service.ProductService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AccountService accountService;
	@Autowired
	OrderService orderService;
	@Autowired
	ProductService productService;
	
	Pageable pageable = PageRequest.of(0, 10);
	
	@GetMapping("/index")
	public String index(Model model) {
		model.addAttribute("account", accountService.findAll(pageable).getContent().get(0));
		return "layout/admin/index";
	}
	
	@GetMapping("/information")
	public String getAdminIndex(Model model, @ModelAttribute("account") Account account, BindingResult result) {
		
		
		model.addAttribute("account", accountService.findAll(pageable).getContent().get(0));
		model.addAttribute("jsp", "_information.jsp");
		model.addAttribute("active", "1");
		return "forward:/admin/index";
	}
	@PostMapping("/information")
	public String postAdminIndex(BindingResult result, Model model) {
		model.addAttribute("jsp", "_information.jsp");
		model.addAttribute("active", "1");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		return "forward:/admin/index";
	}
	
	@GetMapping("/order")
	public String getAdminOrder(Model model) {
		
		Account account = accountService.findAll(pageable).getContent().get(0);
		
		model.addAttribute("currentOrder", orderService.findAll(pageable).getContent().get(0));
		model.addAttribute("pages", orderService.findByAccountUserName(account.getUserName(), pageable));
		model.addAttribute("jsp", "_order.jsp");
		model.addAttribute("active", "2");
		return "forward:/admin/index";
	}
	@PostMapping("/order")
	public String postAdminOrder(@Valid @ModelAttribute("order") Order order,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "_order.jsp");
		model.addAttribute("active", "2");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		return "forward:/admin/index";
	}
	
	@GetMapping("/history")
	public String getAdminHistory(Model model) {
		model.addAttribute("jsp", "_history.jsp");
		model.addAttribute("active", "3");
		
		return "forward:/admin/index";
	}
	@PostMapping("/history")
	public String postAdminHistory(@Valid @ModelAttribute("order") Order order,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "_history.jsp");
		model.addAttribute("active", "3");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		return "forward:/admin/index";
	}
	@GetMapping("/account")
	public String getUser(Model model, 
			@ModelAttribute("account") Account account, BindingResult result) {
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		
		
		model.addAttribute("pages", accountService.findAll(pageable));
		model.addAttribute("account", accountService.findAll(pageable).getContent().get(0));
		model.addAttribute("jsp", "_account.jsp");
		model.addAttribute("active", "4");
		return "forward:/admin/index";
	}

	@PostMapping("/user")
	public String save(Model model,
			BindingResult result) {
		
		model.addAttribute("jsp", "_user.jsp");
		model.addAttribute("active", "4");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "forward:/admin/index";
	}
	
	@GetMapping("/product")
	public String getAdminProduct(Model model) {
		model.addAttribute("product", productService.findAll(pageable).getContent().get(0));
		model.addAttribute("pages", productService.findAll(pageable));
		model.addAttribute("jsp", "_product.jsp");
		model.addAttribute("active", "5");
		
		return "forward:/admin/index";
	}
	@PostMapping("/product")
	public String postAdminProduct(Model model, @ModelAttribute("product") Product product, BindingResult result) {
		model.addAttribute("jsp", "_drink-management.jsp");
		model.addAttribute("active", "5");
		
		return "forward:/admin/index";
	}
	
	@GetMapping("/order-management")
	public String getAdminOrderManagement(Model model, @ModelAttribute("order") Order order, BindingResult result,
			@PathVariable("orderId") String orderId) {
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		System.out.println(orderId);
		
		model.addAttribute("jsp", "_order-management.jsp");
		model.addAttribute("active", "6");
		return "forward:/admin/index";
	}
	@PostMapping("/order-management")
	public String postAdminOrderManagement(BindingResult result, Model model) {
		model.addAttribute("jsp", "_order-management.jsp");
		model.addAttribute("active", "6");
		
		return "forward:/admin/index";
	}
	
	@GetMapping("/report")
	public String getAdminReport(BindingResult result, Model model) {
		model.addAttribute("jsp", "_report.jsp");
		model.addAttribute("active", "7");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "forward:/admin/index";
	}
	@PostMapping("/report")
	public String postAdminReport(BindingResult result, Model model) {
		model.addAttribute("jsp", "_report.jsp");
		model.addAttribute("active", "7");
		
		return "forward:/admin/index";
	}
}


