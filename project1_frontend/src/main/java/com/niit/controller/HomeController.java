package com.niit.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Category;
import com.niit.services.ProductService;


@Controller

public class HomeController {
	@Autowired
private ProductService productService;
	public HomeController(){
		System.out.println("HomeController is instantiated");
	}
	
	@RequestMapping(value={"/home","/"})
	public String homePage(Model model){
		List<Category> categoriesList=productService.getAllCategories();
		model.addAttribute("categories",categoriesList);
		model.addAttribute("title","Home");
		return "home";
	}
	
	@RequestMapping("/aboutus")
	public String aboutUs(Model model){
		List<Category> categoriesList=productService.getAllCategories();
		model.addAttribute("categories",categoriesList);
		model.addAttribute("title","About");
		return "aboutus";
}
	
	//for logout -> /login?logout=''
	//for invalid credentials -> /login?error=''
	@RequestMapping("/login")
	public String loginPage(@RequestParam(required=false) String error,@RequestParam(required=false) String logout,Model model){
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("title","Login");
		if(error!=null)
		model.addAttribute("error","Invalid Username/Password");
		if(logout!=null)
			model.addAttribute("msg","Loggedout successfully");
		return "login";
	}
}