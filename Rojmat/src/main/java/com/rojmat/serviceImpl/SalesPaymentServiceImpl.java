package com.rojmat.serviceImpl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.PurchasePaymentDao;
import com.rojmat.dao.SalesPaymentDao;
import com.rojmat.entity.PurchasePayment;
import com.rojmat.entity.SalesPayment;
import com.rojmat.service.PurchasePaymentService;
import com.rojmat.service.SalesPaymentService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class SalesPaymentServiceImpl implements SalesPaymentService{
	@Autowired
	private SalesPaymentDao salesPaymentDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addSalesPayment(SalesPayment salesPayment) {
		salesPaymentDao.addSalesPayment(salesPayment);
	}
	@Override
	public List<SalesPayment> getSalesPayments() {
		return salesPaymentDao.getSalesPayments();
	}
	@Override
	public SalesPayment getSalesPayment(int sid) {
		return (SalesPayment)salesPaymentDao.getSalesPayment(sid);
	}
	@Override
	public void deleteSalesPayment(int sid) {
		salesPaymentDao.deleteSalesPayment(sid);
	}
}
