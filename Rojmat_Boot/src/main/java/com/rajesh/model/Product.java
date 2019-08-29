package com.rajesh.model;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Basic(fetch = FetchType.EAGER)
	private int pid;
	@Column
	private String name;
	@Column
	private String hsncode;
	@Column
	private double price;
	@OneToOne
	@JoinColumn(name="cid")
	private Category category;
	@OneToOne
	@JoinColumn(name="unitid")
	private Unit unit;
	@OneToOne
	@JoinColumn(name="gstid")
	private Gst gst;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHsncode() {
		return hsncode;
	}
	public void setHsncode(String hsncode) {
		this.hsncode = hsncode;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Unit getUnit() {
		return unit;
	}
	public void setUnit(Unit unit) {
		this.unit = unit;
	}
	public Gst getGst() {
		return gst;
	}
	public void setGst(Gst gst) {
		this.gst = gst;
	}

}
