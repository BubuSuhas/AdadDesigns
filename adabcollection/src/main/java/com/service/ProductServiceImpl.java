package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.Category;
import com.model.Product;

@Service(value="productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Transactional
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	
	public Product getProductById(String productId) {
		return productDao.getProductById(productId);
	}

	
	public void deleteProduct(String productId) {
		productDao.deleteProduct(productId);
	}
	
	public void addProduct(Product product){
		productDao.addProduct(product);
	}
	
	public void editProduct(Product product){
		productDao.editProduct(product);
	}

	@Override
	public List<Category> getAllCategory() {
		// TODO Auto-generated method stub
		return productDao.getAllCategory();
	}

	@Override
	public List<Product> getAllProductsByCategory(String catergoryId) {
		// TODO Auto-generated method stub
		return productDao.getProductByCategory(catergoryId);
	}

	@Override
	public void addCategory(Category category) {
		productDao.addCategory(category);
		
	}

	@Override
	public void deleteCategory(String catergoryId) {
		productDao.deleteCategory(catergoryId);
		
	}

}
