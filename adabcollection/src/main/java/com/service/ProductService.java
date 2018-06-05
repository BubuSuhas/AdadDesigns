package com.service;

import java.util.List;

import com.model.Category;
import com.model.Product;

public interface ProductService {

	
	public List<Category> getAllCategory();	
	public List<Product> getAllProductsByCategory(String catergoryId);
	void addCategory(Category category);
	void deleteCategory(String catergoryId);
	
	public List<Product> getAllProducts();
	Product getProductById(String productId);

	void deleteProduct(String productId);
	
	void addProduct(Product product);
	
	void editProduct(Product product);
}
