package com.food.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "book", catalog = "food")
public class Book implements java.io.Serializable {

	// Fields

	private Integer bookid;
	private String img;
	private String bookname;
	private String booktype;
	private String note;
	private String author;
	private String press;
	private Double oriprice;
	private Double price;
	private Integer customerid;

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(Integer bookid, String img, String bookname, String booktype, String note, String author, String press,
			Double oriprice, Double price) {
		this.bookid = bookid;
		this.img = img;
		this.bookname = bookname;
		this.booktype = booktype;
		this.note = note;
		this.author = author;
		this.press = press;
		this.oriprice = oriprice;
		this.price = price;
	}

	/** full constructor */
	public Book(Integer bookid, String img, String bookname, String booktype, String note, String author, String press,
			Double oriprice, Double price, Integer customerid) {
		this.bookid = bookid;
		this.img = img;
		this.bookname = bookname;
		this.booktype = booktype;
		this.note = note;
		this.author = author;
		this.press = press;
		this.oriprice = oriprice;
		this.price = price;
		this.customerid = customerid;
	}

	// Property accessors

	public Integer getBookid() {
		return this.bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getBooktype() {
		return this.booktype;
	}

	public void setBooktype(String booktype) {
		this.booktype = booktype;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPress() {
		return this.press;
	}

	public void setPress(String press) {
		this.press = press;
	}

	public Double getOriprice() {
		return this.oriprice;
	}

	public void setOriprice(Double oriprice) {
		this.oriprice = oriprice;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getCustomerid() {
		return this.customerid;
	}

	public void setCustomerid(Integer customerid) {
		this.customerid = customerid;
	}

}