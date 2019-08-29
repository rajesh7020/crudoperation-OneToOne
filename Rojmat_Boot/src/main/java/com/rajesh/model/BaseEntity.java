package com.rajesh.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * This is the base entity. All entity classes should implement this. It has the
 * basic logging attributes, which should be the part of each entity.
 * 
 * @author Rajesh Bhushan
 *
 */
@MappedSuperclass
public class BaseEntity {
	
	@Column
	@Temporal(TemporalType.TIMESTAMP)
	Date createddate;

	@Column
	String createdby;

	@Column
	@Temporal(TemporalType.TIMESTAMP)
	Date updateddate;

	@Column
	String updatedby;

	public Date getCreatedDate() {
		return createddate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createddate = createdDate;
	}

	public String getCreatedBy() {
		return createdby;
	}

	public void setCreatedBy(String createdBy) {
		this.createdby = createdBy;
	}

	public Date getUpdatedDate() {
		return updateddate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updateddate = updatedDate;
	}

	public String getUpdatedBy() {
		return updatedby;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedby = updatedBy;
	}
}
