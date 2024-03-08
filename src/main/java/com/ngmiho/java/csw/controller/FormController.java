package com.ngmiho.java.csw.controller;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import jakarta.validation.Valid;


@Controller
public class FormController {
	
	@GetMapping("/form-index")
	public String index(){
		return "layout/form/index";
	}
	
	@GetMapping("/login")
	public String rqLogin(Model model,
			 BindingResult result){
		model.addAttribute("jsp", "_login.jsp");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
			return "forward:/form-index";
		}
		return "forward:/form-index";
	}
	
	@RequestMapping("/sign-up")
	public String rqSignUp(Model model,
			 BindingResult result){
		model.addAttribute("jsp", "_sign-up.jsp");
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "forward:/form-index";
	}
	
	@RequestMapping("/forgot-password")
	public String rqForgotPassword(Model model,
			 BindingResult result){
		model.addAttribute("jsp", "_forgot-password.jsp");
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "forward:/form-index";
	}
	
	@GetMapping("/opt")
	public String getOTP(Model model) {
		model.addAttribute("jsp", "_otp.jsp");
		return "forward:/form-index";
	}
	@PostMapping("/otp")
	public String postOTP(Model model) {
		model.addAttribute("jsp", "_otp.jsp");
		return "forward:/form-index";
	}
	@GetMapping("/confirm-otp")
	public String getConfirmOTP(Model model) {
		model.addAttribute("jsp", "_otp.jsp");
		return "forward:/form-index";
	}
	@PostMapping("/confirm-otp")
	public String postConfirmOTP(Model model,
			 BindingResult result) {
		model.addAttribute("jsp", "_otp.jsp");
		return "forward:/form-index";
	}
}
