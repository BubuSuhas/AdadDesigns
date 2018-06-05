package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Category;
import com.model.Product;

@Repository(value = "productDao")
public class ProductDaoImpl implements ProductDao {

	// this class is wired with the sessionFactory to do some operation in the
	// database

	@Autowired
	private SessionFactory sessionFactory;

	// this will create one sessionFactory for this class
	// there is only one sessionFactory should be created for the applications
	// we can create multiple sessions for a sessionFactory
	// each session can do some functions

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Product> getAllProducts() {
		// Reading the records from the table
		Session session = sessionFactory.openSession();
		// List<Product> products = session.createQuery("from Product").list();
		List<Product> products = session.createCriteria(Product.class).list();
		System.out.println("----- List of Products-----");
		System.out.println(products);
		// session.flush is used for clear cache in the session
		session.flush();
		// it will close the particular session after completing the process
		session.close();
		return products;
	}
	public List<Category> getAllCategory() {
		// Reading the records from the table
		Session session = sessionFactory.openSession();
		// List<Product> products = session.createQuery("from Product").list();
		List<Category> categories = session.createCriteria(Category.class).list();
		System.out.println("----- List of categories-----");
		System.out.println(categories);
		// session.flush is used for clear cache in the session
		session.flush();
		// it will close the particular session after completing the process
		session.close();
		return categories;
	}

	public Product getProductById(String productId) {

		// Reading the records from the table
		Session session = sessionFactory.openSession();
		// select * from Product where isbn=i
		Product product = (Product) session.get(Product.class, productId);
		session.close();
		return product;
	}

	public void deleteProduct(String productId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, productId);
		session.delete(product);
		session.flush();
		session.close();// close the session
	}

	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.save(product);
		session.close();
	}

	public void editProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.update(product);
		session.flush();
		session.close();
	}

	@Override
	public List<Product> getProductByCategory(String category) {
		Session session = sessionFactory.openSession();
		List<Product> productsbycategory = new ArrayList<Product>();
		// List<Product> products = session.createQuery("from Product").list();
		List<Product> products = session.createCriteria(Product.class).list();
		for (Product Producttemp : products) {
			if(Producttemp.getProductCategory().equalsIgnoreCase(category)) {
				productsbycategory.add(Producttemp);
			}
			
		}		
		System.out.println("----- List of Products by category-----");
		System.out.println(products);
		// session.flush is used for clear cache in the session
		session.flush();
		// it will close the particular session after completing the process
		session.close();
		return productsbycategory;
	}

	@Override
	public void addCategory(Category category) {
		Session session = sessionFactory.openSession();
		session.save(category);
		session.close();
		
	}

	@Override
	public void deleteCategory(String categoryid) {
		Session session = sessionFactory.openSession();
		Category category = (Category) session.get(Category.class, categoryid);
		session.delete(category);
		session.flush();
		session.close();// close the session
		
	}

}
