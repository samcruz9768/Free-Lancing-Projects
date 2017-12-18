package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.services.ProductService;

@Controller
public class ProductController {
	@Autowired
private ProductService productService;
	@RequestMapping(value="/all/getallproducts")
public String getAllProducts(Model model){
	List<Product> products=productService.getAllProducts();
	List<Category> categoriesList=productService.getAllCategories();
	model.addAttribute("categories",categoriesList);
	model.addAttribute("productsAttr",products);
	return "productlist";
	
}
	
	@RequestMapping(value="/all/viewproduct/{id}")
	public String getProduct(Model model,@PathVariable int id){
		Product product=productService.getProduct(id);
		model.addAttribute("product",product);
		model.addAttribute("title",product.getProductname());
		List<Category> categoriesList=productService.getAllCategories();
		model.addAttribute("categories",categoriesList);
		return "viewproduct";
	}
	
	@RequestMapping(value="/admin/deleteproduct/{id}")
	public String deleteProduct(HttpServletRequest request,@PathVariable int id){
		String rootDirectory=request.getServletContext().getRealPath("/");
		Path path=Paths.get(rootDirectory + "/WEB-INF/resources/images/"+id+".png");
		if(Files.exists(path)){
			try {
				Files.delete(path);
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
		productService.deleteProduct(id);
		return "redirect:/all/getallproducts";
	}
	
	@RequestMapping(value="/admin/getproductform")
	public String getProductForm(@RequestParam(required=false)int id,Model model){
		if(id==0)
		model.addAttribute("product",new Product());
		else{ 
			Product product=productService.getProduct(id);
			model.addAttribute("product",product);
		}
		
		List<Category> categoriesList=productService.getAllCategories();
		model.addAttribute("categories",categoriesList);
		model.addAttribute("title","Add Product");
		return "productform";
	}
	
	@RequestMapping(value="/admin/saveorupdateproduct")
    public String saveorUpdateProduct(HttpServletRequest request,@Valid @ModelAttribute(name="product")  Product product,BindingResult result,Model model) {//3
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
		if(result.hasErrors()){//constraint violation
			
			return "productform";
		}
		System.out.println(product.getProductname());
		
    	productService.saveOrUpdateProduct(product); 
    	String rootDirectory=request.getServletContext().getRealPath("/");
    	System.out.println(rootDirectory);
    	Path path=Paths.get(rootDirectory + "/WEB-INF/resources/images/"+product.getId()+".png");
    	MultipartFile prodImage=product.getImage();
    	try {
			prodImage.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
    	return "redirect:/all/getallproducts";
    }
	
	@RequestMapping("/all/product/searchbycategory")
	public String selectByCatagory(@RequestParam String searchCondition,Model model){
		model.addAttribute("productsAttr",productService.getAllProducts());
		List<Category> category=productService.getAllCategories();
		model.addAttribute("categories",category);
		if(searchCondition.equals("All")) 
			model.addAttribute("searchCondition","");
		else
		model.addAttribute("searchCondition",searchCondition);
		model.addAttribute("title",searchCondition);
		return "productlist";
	}
	
}