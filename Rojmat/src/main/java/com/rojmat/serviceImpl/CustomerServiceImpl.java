package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.CustomerDao;
import com.rojmat.entity.Customer;
import com.rojmat.service.CustomerService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerDao customerDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);
	}
	@Override
	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}
	@Override
	public Customer getCustomerById(int custid) {
		return customerDao.getCustomerById(custid);
	}
	@Override
	public void deleteCustomerById(int custid) {
		customerDao.deleteCustomerById(custid);
	}
}
