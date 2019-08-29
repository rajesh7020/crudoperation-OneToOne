package com.rojmat.daoImpl;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.SalesPaymentDao;
import com.rojmat.entity.SalesPayment;

@Repository
public class SalesPaymentDaoImpl implements SalesPaymentDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addSalesPayment(SalesPayment salesPayment) {
		sessionFactory.getCurrentSession().saveOrUpdate(salesPayment);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<SalesPayment> getSalesPayments() {
		return sessionFactory.getCurrentSession().createCriteria(SalesPayment.class).list();
	}
	@Override
	public SalesPayment getSalesPayment(int sid) {
		return (SalesPayment)sessionFactory.getCurrentSession().get(SalesPayment.class, sid);
	}
	@Override
	public void deleteSalesPayment(int sid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM SalesPayment WHERE sid="+sid).executeUpdate();
	}
}
