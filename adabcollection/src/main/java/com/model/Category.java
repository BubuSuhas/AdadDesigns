package com.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "category")
public class Category implements Serializable {

	private static final long serialVersionUID = 5186013952828648626L;
	
	
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int categoryId;
	
	@NotEmpty(message = "category Name is mandatory")
	@Column(name="catergoryname")
	private String catergoryname;
	// Constructors
	public Category(int categoryId, String catergoryname) {
		super();
		this.categoryId = categoryId;
		this.catergoryname = catergoryname;
				
	}

	public Category() {

	}

	public int getCategoryId() {
		return categoryId;
	}

	public String getCatergoryname() {
		return catergoryname;
	}

	public void setCatergoryname(String catergoryname) {
		this.catergoryname = catergoryname;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}


}
