package com.rajesh.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="purchasepayment")
public class PurchasePayment {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
	private int pid;
	@Column
	private Date invoiceDate;
	@Column
	private String invoiceNo;
	@Column
	private String partyName;
	@Column
	private double invoiceAmount;
	@Column
	private double paidAmount;
	@Column
	private double unpaidAmount;
	@Column
	private int chequeNoOrTransactionId;
	@Column
	private Date paymentdate;
	@OneToOne
	@JoinColumn(name="payid")
	private PaymentType paymenttype;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Date getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public String getPartyName() {
		return partyName;
	}
	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}
	public double getInvoiceAmount() {
		return invoiceAmount;
	}
	public void setInvoiceAmount(double invoiceAmount) {
		this.invoiceAmount = invoiceAmount;
	}
	public double getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}
	public double getUnpaidAmount() {
		return unpaidAmount;
	}
	public void setUnpaidAmount(double unpaidAmount) {
		this.unpaidAmount = unpaidAmount;
	}
	public int getChequeNoOrTransactionId() {
		return chequeNoOrTransactionId;
	}
	public void setChequeNoOrTransactionId(int chequeNoOrTransactionId) {
		this.chequeNoOrTransactionId = chequeNoOrTransactionId;
	}
	public Date getPaymentdate() {
		return paymentdate;
	}
	public void setPaymentdate(Date paymentdate) {
		this.paymentdate = paymentdate;
	}
	public PaymentType getPaymenttype() {
		return paymenttype;
	}
	public void setPaymenttype(PaymentType paymenttype) {
		this.paymenttype = paymenttype;
	}
}
