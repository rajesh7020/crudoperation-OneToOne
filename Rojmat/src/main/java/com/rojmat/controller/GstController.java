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
import com.rojmat.entity.Gst;
import com.rojmat.service.GstService;
import com.rojmat.service.ProductService;

@Controller
@RequestMapping(value="/gst")
public class GstController {
	@Autowired
	private GstService gstService;
	@Autowired
	private ProductService productService;
	@RequestMapping(value="/addGst", method=RequestMethod.GET)
	public ModelAndView addGst(@ModelAttribute("command")Gst gst, BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("gsts", gstService.getGsts());
		return new ModelAndView("gst", model);
	}
	@RequestMapping(value="/saveGst", method=RequestMethod.POST)
	public ModelAndView saveGst(@ModelAttribute("command")Gst gst, BindingResult result) {
		gstService.addGst(gst);
		return new ModelAndView("redirect:/gst/addGst");
	}
	@RequestMapping(value="/editGst", method=RequestMethod.GET)
	public ModelAndView editGst(@ModelAttribute("command")Gst gst, BindingResult result) {
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("gst", gstService.getGst(gst.getGstid()));
		model.put("gsts", gstService.getGsts());
		return new ModelAndView("gst", model);
	}
	@RequestMapping(value="/deleteGst", method=RequestMethod.GET)
	public ModelAndView deleteGst(@ModelAttribute("command")Gst gst, BindingResult result) {
		gstService.deleteGst(gst.getGstid());
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("gsts", gstService.getGsts());
		return new ModelAndView("redirect:/gst/addGst", model);
	}
	@RequestMapping(value="/gsts", method=RequestMethod.GET)
	public List<Gst> getGsts() {
		return gstService.getGsts();
	}
}
