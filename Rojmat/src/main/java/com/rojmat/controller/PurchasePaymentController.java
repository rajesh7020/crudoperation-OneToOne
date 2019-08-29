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
import com.rojmat.entity.PurchasePayment;
import com.rojmat.service.PaymentTypeService;
import com.rojmat.service.PurchasePaymentService;


@Controller
@RequestMapping(value="/purchase")
public class PurchasePaymentController {
	@Autowired
	private PurchasePaymentService purchasePaymentService;
	@Autowired
	private PaymentTypeService paymentTypeService;
	@RequestMapping(value="/savepurchasepayment", method=RequestMethod.POST)
	public ModelAndView savePurchasePayment(@ModelAttribute("command")PurchasePayment purchasePayment, BindingResult result) {
		purchasePaymentService.addPurchasePayment(purchasePayment);
		return new ModelAndView("redirect:/purchase/addpurchasepay");
	}
	@RequestMapping(value="/addpurchasepay", method=RequestMethod.GET)
	public ModelAndView addPurchasePayment(@ModelAttribute("command")PurchasePayment purchasePayment,BindingResult result) {
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("purchasePayments", purchasePaymentService.getPurchasePayments());
		model.put("paymenttypes", paymentTypeService.getPaymentTypes());
		return new ModelAndView("purchasepayment", model);
	}
	@RequestMapping(value="/deletepurchasepayment",method=RequestMethod.GET)
	public ModelAndView deletePurchasePayment(@ModelAttribute("command")PurchasePayment purchasePayment, BindingResult ressult) {
		purchasePaymentService.deletepurchasePayment(purchasePayment.getPid());
		Map<String,Object> model = new HashMap<String,Object>();
		return new ModelAndView("redirect:/purchase/addpurchasepay", model);
	}
	@RequestMapping(value="/editpurchasepayment", method=RequestMethod.GET)
	public ModelAndView editPurchasePayment(@ModelAttribute("command")PurchasePayment purchasePayment, BindingResult result) {
		Map<String, Object> model = new HashMap<String,Object>();
		model.put("purchasePayment", purchasePaymentService.getPurchasePayment(purchasePayment.getPid()));
		model.put("purchasePayments", purchasePaymentService.getPurchasePayments());
		model.put("paymenttypes", paymentTypeService.getPaymentTypes());
		return new ModelAndView("purchasepayment",model);
	}
	@RequestMapping(value="/purchasePayments", method=RequestMethod.GET)
	public List<PurchasePayment> getPurchasePayments() {
		return purchasePaymentService.getPurchasePayments();	
	}
}
