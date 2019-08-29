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
import com.rojmat.entity.PaymentType;
import com.rojmat.service.PaymentTypeService;

@Controller
@RequestMapping(value="paymentt")
public class PaymentTypeController {
	@Autowired
	private PaymentTypeService paymentTypeServie;
	@RequestMapping(value="/savepaymentype", method=RequestMethod.POST)
	public ModelAndView savePaymentType(@ModelAttribute("command")PaymentType paymenttype, BindingResult result) {
		paymentTypeServie.addPaymentType(paymenttype);
		return new ModelAndView("redirect:/paymentt/paytype");
	}
	@RequestMapping(value="/paytype", method=RequestMethod.GET)
	public ModelAndView showPaymentType(@ModelAttribute("command")PaymentType paymenttype, BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("paymenttypes", paymentTypeServie.getPaymentTypes());
		return new ModelAndView("paymenttype", model);
	}
	@RequestMapping(value="/editpaymenttype", method=RequestMethod.GET)
	public ModelAndView editPaymentType(@ModelAttribute("command")PaymentType paymenttype, BindingResult result) {
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("paymenttype", paymentTypeServie.getPaymentType(paymenttype.getPayid()));
		model.put("paymenttypes", paymentTypeServie.getPaymentTypes());
		return new ModelAndView("paymenttype", model);
	}
	@RequestMapping(value="/deletepaymenttype", method=RequestMethod.GET)
	public ModelAndView deletePaymentType(@ModelAttribute("command")PaymentType paymenttype, BindingResult result) {
		paymentTypeServie.deletePaymentType(paymenttype.getPayid());
		Map<String,Object> model = new HashMap<String, Object>();
		//model.put("paymenttypes", paymentTypeServie.getPaymentTypes());
		return new ModelAndView("redirect:/paymentt/paytype", model);
	}
	@RequestMapping(value="/paymenttypes", method=RequestMethod.GET)
	public List<PaymentType> getPaymentTypes() {
		return paymentTypeServie.getPaymentTypes();
	}
}
