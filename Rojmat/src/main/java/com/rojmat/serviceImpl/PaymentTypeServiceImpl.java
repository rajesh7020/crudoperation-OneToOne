package com.rojmat.serviceImpl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rojmat.dao.PaymentTypeDao;
import com.rojmat.entity.PaymentType;
import com.rojmat.service.PaymentTypeService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class PaymentTypeServiceImpl implements PaymentTypeService{
	@Autowired
	private PaymentTypeDao paymentTypeDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addPaymentType(PaymentType paymentType) {
		paymentTypeDao.addPaymentType(paymentType);
	}
	@Override
	public List<PaymentType> getPaymentTypes() {
		return paymentTypeDao.getPaymentTypes();
	}
	@Override
	public PaymentType getPaymentType(int payid) {
		return (PaymentType)paymentTypeDao.getPaymentType(payid);
	}
	@Override
	public void deletePaymentType(int payid) {
		paymentTypeDao.deletePaymentType(payid);
	}
}
