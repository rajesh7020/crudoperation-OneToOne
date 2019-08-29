package com.rajesh.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
	private int custid;
	@Column
	private String customername;
	@Column
	private String gstinno;
	@Column
	private String panno;
	@Column
	private String address;
	@Column
	private int pincode;
	@Column
	private String city;
	@Column
	private long mobileno;
	@Column
	private String email;
	@OneToOne
	@JoinColumn(name="stateid")
	private State state;
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getGstinno() {
		return gstinno;
	}
	public void setGstinno(String gstinno) {
		this.gstinno = gstinno;
	}
	public String getPanno() {
		return panno;
	}
	public void setPanno(String panno) {
		this.panno = panno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public long getMobileno() {
		return mobileno;
	}
	public void setMobileno(long mobileno) {
		this.mobileno = mobileno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public State getState() {
		return state;
	}
	public void setState(State state) {
		this.state = state;
	}
}
