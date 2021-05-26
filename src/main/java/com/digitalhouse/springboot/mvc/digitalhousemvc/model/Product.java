package com.digitalhouse.springboot.mvc.digitalhousemvc.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "product")
@Data
public class Product {

	@Id
	@GeneratedValue
	private Long id;

	@Column(nullable = false)
	private String code;

	@Column(nullable = false)
	private String name;

	@Column(nullable = false)
	private BigDecimal price;

	@Column(nullable = false)
	private int quantity;

}
