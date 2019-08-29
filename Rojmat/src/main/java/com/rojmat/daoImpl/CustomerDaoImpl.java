package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.CustomerDao;
import com.rojmat.entity.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addCustomer(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> getCustomers() {
		return sessionFactory.getCurrentSession().createCriteria(Customer.class).list();
	}
	@Override
	public Customer getCustomerById(int custid) {
		return (Customer)sessionFactory.getCurrentSession().get(Customer.class, custid);
	}
	@Override
	public void deleteCustomerById(int custid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Customer WHERE custid="+custid).executeUpdate();
	}
}
