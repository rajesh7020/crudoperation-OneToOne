package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.Customer;

public interface CustomerService {
	public void addCustomer(Customer customer); 
	 public List<Customer> getCustomers();
	 public Customer getCustomerById(int custid);
	 public void deleteCustomerById(int custid);
}
