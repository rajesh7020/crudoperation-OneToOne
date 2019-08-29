package com.rojmat.entity;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
/**
 * @author Rajesh Bhushan
 */
@Entity
@Table(name="users")
public class User extends BaseEntity{
	
	@Id
	@Column(nullable=false,updatable=false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int userId;
	@Column 
	private String shopname;
	@Column
	private String name;
	@Column 
	private String address;
	@Column 
	private String mobile;
	@Column 
	private String email;
	@Column
	private String password;
	@Column
	private boolean status;
	/*@OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	private List<Roles> roles = new ArrayList<Roles>();*/
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	/*public List<Roles> getRoles() {
		return roles;
	}
	public void setRoles(List<Roles> roles) {
		this.roles = roles;
	}	*/
}
