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
import com.rojmat.entity.SalesPayment;
import com.rojmat.service.PaymentTypeService;
import com.rojmat.service.SalesPaymentService;

@Controller
@RequestMapping(value="/sales")
public class SalesPaymentController {
	@Autowired
	private SalesPaymentService salesPaymentService;
	@Autowired
	private PaymentTypeService paymentTypeService;
	@RequestMapping(value="/savesalespayment", method=RequestMethod.POST)
	public ModelAndView savesalesPayment(@ModelAttribute("command")SalesPayment salesPayment, BindingResult result) {
		salesPaymentService.addSalesPayment(salesPayment);
		return new ModelAndView("redirect:/sales/addsales");
	}
	@RequestMapping(value="/addsales", method=RequestMethod.GET)
	public ModelAndView addsalesPayment(@ModelAttribute("command")SalesPayment salesPayment,BindingResult result) {
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("salesPayments", salesPaymentService.getSalesPayments());
		model.put("paymenttypes", paymentTypeService.getPaymentTypes());
		return new ModelAndView("salespayment", model);
	}
	@RequestMapping(value="/deletesalespayment",method=RequestMethod.GET)
	public ModelAndView deletesalesPayment(@ModelAttribute("command")SalesPayment salesPayment, BindingResult ressult) {
		salesPaymentService.deleteSalesPayment(salesPayment.getSid());
		Map<String,Object> model = new HashMap<String,Object>();
		return new ModelAndView("redirect:/sales/addsales", model);
	}
	@RequestMapping(value="/editsalespayment", method=RequestMethod.GET)
	public ModelAndView editsalesPayment(@ModelAttribute("command")SalesPayment salesPayment, BindingResult result) {
		Map<String, Object> model = new HashMap<String,Object>();
		model.put("salesPayment", salesPaymentService.getSalesPayment(salesPayment.getSid()));
		model.put("salesPayments", salesPaymentService.getSalesPayments());
		model.put("paymenttypes", paymentTypeService.getPaymentTypes());
		return new ModelAndView("salespayment",model);
	}
	@RequestMapping(value="/salesPayments", method=RequestMethod.GET)
	public List<SalesPayment> getSalesPayments() {
		return salesPaymentService.getSalesPayments();
	}
}
