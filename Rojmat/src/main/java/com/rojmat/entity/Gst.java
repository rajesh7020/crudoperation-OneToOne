package com.rojmat.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="gst")
public class Gst {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="gstid")
	private int gstid;
	@Column
	private double percentage;
	public int getGstid() {
		return gstid;
	}
	public void setGstid(int gstid) {
		this.gstid = gstid;
	}
	public double getPercentage() {
		return percentage;
	}
	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}
}
