package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "item")
public class SubCategory implements Serializable {

	private static final long serialVersionUID = 5186013952828648626L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int subcategoryId;
	
	@Column(name = "catrgoryrefid")
	private int categoryrefid;
	
	@NotEmpty(message = "category Name is mandatory")
	@Column(name="subcatrgoryname")
	private String subcategoryname;
	
	@ManyToOne
	@JoinColumn(name = "Id")
	private Category category;
	
	public int getSubcategoryId() {
		return subcategoryId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public void setSubcategoryId(int subcategoryId) {
		this.subcategoryId = subcategoryId;
	}

	public int getCategoryrefid() {
		return categoryrefid;
	}

	public void setCategoryrefid(int categoryrefid) {
		this.categoryrefid = categoryrefid;
	}

	public String getSubcategoryname() {
		return subcategoryname;
	}

	public void setSubcategoryname(String subcategoryname) {
		this.subcategoryname = subcategoryname;
	}

	// Constructors
	public SubCategory(int subcategoryId, String subcategoryname, int categoryrefid ) {
		super();
		this.subcategoryId = subcategoryId;
		this.subcategoryname = subcategoryname;
		this.categoryrefid = categoryrefid;		
	}

	

}
