package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.PurchasePayment;

public interface PurchasePaymentDao {
	 public void addPurchasePayment(PurchasePayment purchasePayment); 
	 public List<PurchasePayment> getPurchasePayments();
	 public PurchasePayment getPurchasePayment(int payid);
	 public void deletepurchasePayment(int pid);
}
