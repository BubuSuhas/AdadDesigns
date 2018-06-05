package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "item")
public class Product implements Serializable {

	private static final long serialVersionUID = 5186013952828648626L;

	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String productId;
	
	@NotEmpty(message = "category Name is mandatory")
	@Column(name="category")
	private String productCategory;
	
	
	
	@Column(name = "description")
	private String productDescription;
	
	@Column(name = "manufacturer")
	private String productManufacturer;
	
	@NotEmpty(message = "Product Name is mandatory")
	@Column(name = "name")
	private String productName;
	
	@NotNull(message="Please provide some price")
	@Min(value = 100, message = "Minimum value should be greater than 100")
	@Column(name = "price")
	private double productPrice;
	
	@Column(name = "unit")
	private String unitStock;

	@Column(name = "size")
	private String size;
	
	@Column(name = "colour")
	private String colour;
	
	@Column(name = "rating")
	private String rating;
	
	@Column(name = "push")
	private String push;
	
	@Column(name = "discount")
	private int discount;
	
	@Column(name = "url")
	private String url;
	
	@Column(name = "deliverytime")
	private String deliverytime;
	
	@Column(name = "summary")
	private String summary;
	
	@Column(name = "offergroup")
	private String offergroup;
	
	@NotEmpty(message = "subcategory Name is mandatory")
	@Column(name="subcategory")
	private String productSubCategory;
	
	
	@Transient
	private MultipartFile productImage;
	
	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public char[] getRating() {
		return rating.toCharArray();
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getPush() {
		return push;
	}

	public void setPush(String push) {
		this.push = push;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDeliverytime() {
		return deliverytime;
	}

	public void setDeliverytime(String deliverytime) {
		this.deliverytime = deliverytime;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getOffergroup() {
		return offergroup;
	}

	public void setOffergroup(String offergroup) {
		this.offergroup = offergroup;
	}

	public String getProductSubCategory() {
		return productSubCategory;
	}

	public void setProductSubCategory(String productSubCategory) {
		this.productSubCategory = productSubCategory;
	}

	

	// Getters and Setter

	public String getProductId() {
		return productId;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public String getProductManufacturer() {
		return productManufacturer;
	}

	public String getProductName() {
		return productName;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public String getUnitStock() {
		return unitStock;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public void setProductManufacturer(String productManufacturer) {
		this.productManufacturer = productManufacturer;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public void setUnitStock(String unitStock) {
		this.unitStock = unitStock;
	}

	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	// Constructors
	public Product(String productId, String productCategory, String productDescription, String productManufacturer,
			String productName, double productPrice, String unitStock,String size ,String colour ,String rating ,String push ,int discount ,String url ,String deliverytime ,String summary ,String offergroup ,String productSubCategory ) {
		super();
		this.productId = productId;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
		this.productManufacturer = productManufacturer;
		this.productName = productName;
		this.productPrice = productPrice;
		this.unitStock = unitStock;
		this.size = size;
		this.colour = colour;
		this.rating = rating;
		this.push = push;
		this.discount = discount;
		this.url = url;
		this.deliverytime = deliverytime;
		this.summary = summary;
		this.offergroup = offergroup;
		this.productSubCategory = productSubCategory;
		
	}

	public Product() {

	}

}
