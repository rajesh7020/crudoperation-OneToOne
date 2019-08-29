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
import com.rojmat.entity.Product;
import com.rojmat.service.CategoryService;
import com.rojmat.service.GstService;
import com.rojmat.service.ProductService;
import com.rojmat.service.UnitService;

@Controller
@RequestMapping(value="/product")
public class ProductController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private GstService gstService;
	@Autowired
	private UnitService unitService;
	@Autowired
	private ProductService productService;
	@RequestMapping(value="/saveProduct", method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("command") Product product, BindingResult result) {
		productService.addProduct(product);
		return new ModelAndView("redirect:/product/addProduct");
	}
	@RequestMapping(value="/addProduct", method=RequestMethod.GET)
	public ModelAndView addProduct(@ModelAttribute("command") Product product,BindingResult result) {
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("products", productService.getProducts());
		model.put("categories", categoryService.getCategories());
		model.put("gsts", gstService.getGsts());
		model.put("units", unitService.getUnits());
		return new ModelAndView("product", model);
	}
	@RequestMapping(value="/deleteProduct",method=RequestMethod.GET)
	public ModelAndView deleteProduct(@ModelAttribute("command") Product product, BindingResult ressult) {
		productService.deleteProduct(product.getPid());
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("products", productService.getProducts());
		model.put("categories", categoryService.getCategories());
		model.put("gsts", gstService.getGsts());
		model.put("units", unitService.getUnits());
		return new ModelAndView("redirect:/product/addProduct", model);
	}
	@RequestMapping(value="/editProduct", method=RequestMethod.GET)
	public ModelAndView editProduct(@ModelAttribute("command") Product product, BindingResult result) {
		Map<String, Object> model = new HashMap<String,Object>();
		model.put("product", productService.getProduct(product.getPid()));
		model.put("products", productService.getProducts());
		model.put("categories", categoryService.getCategories());
		model.put("gsts", gstService.getGsts());
		model.put("units", unitService.getUnits());
		return new ModelAndView("product",model);
	}
	@RequestMapping(value="/products", method=RequestMethod.GET)
	public List<Product> getProducts() {
		return productService.getProducts();
	}
}
