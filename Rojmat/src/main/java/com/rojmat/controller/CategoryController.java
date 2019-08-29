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
import com.rojmat.entity.Category;
import com.rojmat.service.CategoryService;
import com.rojmat.service.ProductService;

@Controller
@RequestMapping(value="/category")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;
	@RequestMapping(value="/saveCategory", method=RequestMethod.POST)
	public ModelAndView saveCategory(@ModelAttribute("command") Category category, BindingResult result) {
		categoryService.addCategory(category);
		return new ModelAndView("redirect:/category/addCategory");
	}
	@RequestMapping(value="/addCategory", method=RequestMethod.GET)
	public ModelAndView addCategory(@ModelAttribute("command") Category category, BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("categories", categoryService.getCategories());
		return new ModelAndView("category", model);
	}
	@RequestMapping(value="/editCategory", method=RequestMethod.GET)
	public ModelAndView editCategory(@ModelAttribute("command") Category category, BindingResult result) {
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("category", categoryService.getCategory(category.getCid()));
		model.put("categories", categoryService.getCategories());
		return new ModelAndView("category", model);
	}
	@RequestMapping(value="/deleteCategory", method=RequestMethod.GET)
	public ModelAndView deleteCategory(@ModelAttribute("command") Category category, BindingResult result) {
		categoryService.deleteCategory(category.getCid());
		Map<String,Object> model = new HashMap<String, Object>();
		model.put("categories", categoryService.getCategories());
		return new ModelAndView("redirect:/category/addCategory", model);
	}
	@RequestMapping(value="/categories", method=RequestMethod.GET)
	public List<Category> getCategries() {
		return categoryService.getCategories();
	}
}
