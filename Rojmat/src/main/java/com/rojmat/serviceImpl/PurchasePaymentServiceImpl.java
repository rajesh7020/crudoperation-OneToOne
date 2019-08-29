package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.PurchasePaymentDao;
import com.rojmat.entity.PurchasePayment;
import com.rojmat.service.PurchasePaymentService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class PurchasePaymentServiceImpl implements PurchasePaymentService{
	@Autowired
	private PurchasePaymentDao purchasePaymentDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addPurchasePayment(PurchasePayment purchasePayment) {
		purchasePaymentDao.addPurchasePayment(purchasePayment);
	}
	@Override
	public List<PurchasePayment> getPurchasePayments() {
		return purchasePaymentDao.getPurchasePayments();
	}
	@Override
	public PurchasePayment getPurchasePayment(int payid) {
		return purchasePaymentDao.getPurchasePayment(payid);
	}
	@Override
	public void deletepurchasePayment(int payid) {
		purchasePaymentDao.deletepurchasePayment(payid);
	}
}
