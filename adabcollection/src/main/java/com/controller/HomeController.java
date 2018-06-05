package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Category;
import com.model.Product;
import com.model.Queries;
import com.service.ProductService;
import com.service.QueriesService;

@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/hello")
	public ModelAndView sayHello() {
		return new ModelAndView("hello", "hello", "Hello Mr.Ismail");
	}

	@RequestMapping("/index")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null)
			model.addAttribute("error", "Invalid username and Password");
		if (logout != null)
			model.addAttribute("logout", "You have logged out successfully");
		return "index1";
	}

	@RequestMapping("/aboutus")
	public String sayAbout() {
		return "aboutUs";
	}

	@Autowired
	private QueriesService queryService;

	@RequestMapping(value = "/contactus")
	public ModelAndView getQuery() {
		Queries query = new Queries();
		return new ModelAndView("contactUs", "contact", query);
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.POST)
	public String addQuery(@Valid @ModelAttribute(value = "contact") Queries query, Model model, BindingResult result) {

		if (result.hasErrors()) {
			model.addAttribute("querySuccess",
					"Sorry, Your Message is not stored in our Server.");
			return "contactUs";
		}
		queryService.addQuery(query);
		model.addAttribute("querySuccess",
				"Thank you, Your Message stored in our Server we will contact through corresponding Mail");
		return "contactUs";

	}
	
	 //Product List using Angular
	 @RequestMapping("/getAllProductsA")
	public ModelAndView getAllProductsbyAngular() {
		List<Product> products = productService.getAllProducts();
		return new ModelAndView("productListAngular", "products", products);
	}
	
	//		Normal ProductList view 
	  @RequestMapping("/getAllProducts") public ModelAndView getAllProducts() {
		  
	  List<Product> products = productService.getAllProducts(); return new
	  ModelAndView("productList", "products", products); }
	  
	  @RequestMapping("/getAllProductsbyCategory/{categoryId}") public ModelAndView getAllProductsByCategory(@PathVariable(value = "categoryId") String categoryId) {
		  
		  List<Product> products = productService.getAllProductsByCategory(categoryId); return new
		  ModelAndView("productList", "products", products); }
	// this is used for getting the product by productId

}

