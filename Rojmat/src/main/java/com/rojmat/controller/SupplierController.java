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
import com.rojmat.entity.Supplier;
import com.rojmat.service.StateService;
import com.rojmat.service.SupplierService;

@Controller
@RequestMapping(value="/supp")
public class SupplierController {
	@Autowired
	private SupplierService supplierService;
	@Autowired
	private StateService stateService;
	@RequestMapping(value="/savesupplier", method=RequestMethod.POST)
	public ModelAndView saveSupplier(@ModelAttribute("command")Supplier supplier, BindingResult result) {
		supplierService.addSupplier(supplier);
		return new ModelAndView("redirect:/supp/addsupplier");
	}
	@RequestMapping(value="/addsupplier", method=RequestMethod.GET)
	public ModelAndView addSupplier(@ModelAttribute("command")Supplier supplier,BindingResult result) {
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("suppliers", supplierService.getSuppliers());
		model.put("states", stateService.getStates());
		return new ModelAndView("supplier", model);
	}
	@RequestMapping(value="/deletesupplier",method=RequestMethod.GET)
	public ModelAndView deleteSupplier(@ModelAttribute("command")Supplier supplier, BindingResult ressult) {
		supplierService.deleteSupplierById(supplier.getSupid());
		Map<String,Object> model = new HashMap<String,Object>();
		return new ModelAndView("redirect:/supp/addsupplier", model);
	}
	@RequestMapping(value="/editsupplier", method=RequestMethod.GET)
	public ModelAndView editSupplier(@ModelAttribute("command")Supplier supplier, BindingResult result) {
		Map<String, Object> model = new HashMap<String,Object>();
		model.put("supplier", supplierService.getSupplierById(supplier.getSupid()));
		model.put("suppliers", supplierService.getSuppliers());
		model.put("states", stateService.getStates());
		return new ModelAndView("supplier",model);
	}
	@RequestMapping(value="/suppliers", method=RequestMethod.GET)
	public List<Supplier> getSuppliers() {
		return supplierService.getSuppliers();
	}
}
