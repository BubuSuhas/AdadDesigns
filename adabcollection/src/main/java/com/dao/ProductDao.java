package com.dao;

import java.util.List;

import com.model.Category;
import com.model.Product;

public interface ProductDao {

	List<Product> getAllProducts();

	Product getProductById(String productId);

	void deleteProduct(String productId);

	void addProduct(Product product);
	
	void editProduct(Product product);
	
	List<Category>getAllCategory();
	List<Product> getProductByCategory(String category);
	void addCategory(Category category);
	void deleteCategory(String category);

}
