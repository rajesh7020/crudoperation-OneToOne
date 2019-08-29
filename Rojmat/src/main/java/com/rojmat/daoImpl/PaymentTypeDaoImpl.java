package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.PaymentTypeDao;
import com.rojmat.entity.PaymentType;

@Repository
public class PaymentTypeDaoImpl implements PaymentTypeDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addPaymentType(PaymentType paymentType) {
		sessionFactory.getCurrentSession().saveOrUpdate(paymentType);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<PaymentType> getPaymentTypes() {
		return sessionFactory.getCurrentSession().createCriteria(PaymentType.class).list();
	}
	@Override
	public PaymentType getPaymentType(int payid) {
		return (PaymentType)sessionFactory.getCurrentSession().get(PaymentType.class, payid);
	}
	@Override
	public void deletePaymentType(int payid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM PaymentType WHERE payid="+payid).executeUpdate();
	}
}
