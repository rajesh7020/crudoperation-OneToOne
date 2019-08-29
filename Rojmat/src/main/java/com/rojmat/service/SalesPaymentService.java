package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.SalesPayment;

public interface SalesPaymentService {
	 public void addSalesPayment(SalesPayment salesPayment); 
	 public List<SalesPayment> getSalesPayments();
	 public SalesPayment getSalesPayment(int sid);
	 public void deleteSalesPayment(int sid);
}
