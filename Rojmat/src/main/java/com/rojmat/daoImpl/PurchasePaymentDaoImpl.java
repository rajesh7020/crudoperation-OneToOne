package com.rojmat.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rojmat.dao.PurchasePaymentDao;
import com.rojmat.entity.PurchasePayment;

@Repository
public class PurchasePaymentDaoImpl implements PurchasePaymentDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addPurchasePayment(PurchasePayment purchasePayment) {
		sessionFactory.getCurrentSession().saveOrUpdate(purchasePayment);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<PurchasePayment> getPurchasePayments() {
		return sessionFactory.getCurrentSession().createCriteria(PurchasePayment.class).list();
	}
	@Override
	public PurchasePayment getPurchasePayment(int payid) {
		return (PurchasePayment)sessionFactory.getCurrentSession().get(PurchasePayment.class, payid);
	}
	@Override
	public void deletepurchasePayment(int pid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM PurchasePayment WHERE pid="+pid).executeUpdate();
	}
}
