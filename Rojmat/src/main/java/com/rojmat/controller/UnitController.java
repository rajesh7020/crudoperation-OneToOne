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
import com.rojmat.entity.Unit;
import com.rojmat.service.ProductService;
import com.rojmat.service.UnitService;

@Controller
@RequestMapping(value="/unit")
public class UnitController {
	@Autowired
	private UnitService unitService;
	@Autowired
	private ProductService productService;
	@RequestMapping(value="/addUnit", method=RequestMethod.GET)
	public ModelAndView addUnit(@ModelAttribute("command")Unit unit, BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("units", unitService.getUnits());
		return new ModelAndView("unit", model);
	}
	@RequestMapping(value="/saveUnit", method=RequestMethod.POST)
	public ModelAndView saveUnit(@ModelAttribute("command")Unit unit, BindingResult result) {
		unitService.addUnit(unit);
		return new ModelAndView("redirect:/unit/addUnit");
	}
	@RequestMapping(value="/editUnit", method=RequestMethod.GET)
	public ModelAndView editUnit(@ModelAttribute("command")Unit unit, BindingResult result) {
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("unit", unitService.getUnit(unit.getUnitid()));
		model.put("units", unitService.getUnits());
		return new ModelAndView("unit", model);
	}
	@RequestMapping(value="/deleteUnit", method=RequestMethod.GET)
	public ModelAndView deleteUnit(@ModelAttribute("command")Unit unit, BindingResult result) {
		unitService.deleteUnit(unit.getUnitid());
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("units", unitService.getUnits());
		return new ModelAndView("redirect:/unit/addUnit", model);
	}
	@RequestMapping(value="/units", method=RequestMethod.GET)
	public List<Unit> getUnit() {
		return unitService.getUnits();
	}
}
