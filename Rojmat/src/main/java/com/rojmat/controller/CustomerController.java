package com.rojmat.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.rojmat.entity.Customer;
import com.rojmat.service.CustomerService;
import com.rojmat.service.StateService;

@Controller
@RequestMapping(value="/cust")
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private StateService stateService;
	@RequestMapping(value="/savecustomer", method=RequestMethod.POST)
	public ModelAndView saveCustomer(@ModelAttribute("command")Customer customer, BindingResult result) {
		customerService.addCustomer(customer);
		return new ModelAndView("redirect:/cust/addcustomer");
	}
	@RequestMapping(value="/addcustomer", method=RequestMethod.GET)
	public ModelAndView addCustomer(@ModelAttribute("command")Customer customer,BindingResult result) {
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("customers", customerService.getCustomers());
		model.put("states", stateService.getStates());
		return new ModelAndView("customer", model);
	}
	@RequestMapping(value="/deletecustomer",method=RequestMethod.GET)
	public ModelAndView deleteCustomer(@ModelAttribute("command")Customer customer, BindingResult ressult) {
		customerService.deleteCustomerById(customer.getCustid());
		Map<String,Object> model = new HashMap<String,Object>();
		return new ModelAndView("redirect:/cust/addcustomer", model);
	}
	@RequestMapping(value="/editcustomer", method=RequestMethod.GET)
	public ModelAndView editCustomer(@ModelAttribute("command")Customer customer, BindingResult result) {
		Map<String, Object> model = new HashMap<String,Object>();
		model.put("customer", customerService.getCustomerById(customer.getCustid()));
		model.put("customers", customerService.getCustomers());
		model.put("states", stateService.getStates());
		return new ModelAndView("customer",model);
	}
	@RequestMapping(value="/states", method=RequestMethod.GET)
	public List<Customer> getCustomers() {
		return customerService.getCustomers();
	}
}
