package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.PurchasePayment;

public interface PurchasePaymentService {
	 public void addPurchasePayment(PurchasePayment purchasePayment); 
	 public List<PurchasePayment> getPurchasePayments();
	 public PurchasePayment getPurchasePayment(int payid);
	 public void deletepurchasePayment(int payid);
}
