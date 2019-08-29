package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.PaymentType;

public interface PaymentTypeDao {
	 public void addPaymentType(PaymentType paymetType); 
	 public List<PaymentType> getPaymentTypes();
	 public PaymentType getPaymentType(int payid);
	 public void deletePaymentType(int payid);
}
