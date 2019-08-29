package com.rojmat.controller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Registration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rojmat.entity.Credit;
import com.rojmat.entity.Debit;
import com.rojmat.entity.User;
import com.rojmat.service.CreditService;
import com.rojmat.service.UserService;
import com.rojmat.validation.UserValidation;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
    CreditService creditService;
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String showForm(ModelMap model) {
		model.put("userData", new User());
		return "/";
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String saveForm(ModelMap model, @ModelAttribute("userData")@Valid User user,BindingResult br,HttpSession session) {	
		UserValidation userValidation = new UserValidation();
		userValidation.validate(userValidation, br);	
		if(br.hasErrors()) {
			return "/";
		}else {
			userService.add(user);
			//session.setAttribute("user", user);
			return "redirect:/";
		}
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String doLogin(ModelMap model,@ModelAttribute(value="userData")User user,HttpSession session) {	
		if(userService.loginUser(user.getEmail(), user.getPassword()) != null)	{
			session.setAttribute("email",user.getEmail());
			session.setAttribute("userid",user.getUserId());
			session.setAttribute("shopname",user.getShopname());
			session.setAttribute("name",user.getName());
			session.setAttribute("mobile",user.getMobile());
			session.setAttribute("address",user.getAddress());
			
			return "redirect:useraccount";
		}else {
			System.out.println("Invalid Email/Password");
			model.put("failed", "Invalid Email/Password");
			return "redirect:/";
		}	
	}
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logOut(ModelMap model, HttpSession session) {
		session.removeAttribute("email");
		return "/";
	}
	@RequestMapping(value="/useraccount",method=RequestMethod.GET)
	public ModelAndView showUserAccount(@ModelAttribute("command")Credit credit, BindingResult br, HttpSession session) {
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("creditdebitlist", creditService.getAllCreditDebit());
		return new ModelAndView("useraccount",model);
	}
	@RequestMapping(value="/useraccount", method=RequestMethod.POST)
	public String userAccount(@RequestParam(value = "amount") String[] amount, 
			                  @RequestParam(value = "description") String[] description, 
			                  ModelMap model, HttpServletRequest request, HttpSession session,@ModelAttribute("command")Credit credit, BindingResult result)
	{
		try {
			List<Debit> debits = new ArrayList<Debit>(Arrays.asList());
			debits = credit.getDebit();
			for(int i=0; i<amount.length; i++) {
				Debit debit = new Debit();
				debit.setAmount(amount[i]);
				debit.setDescription(description[i]);
				debits.add(debit);
			}   
			System.out.println("debits ="+debits);
			List<Debit> debits1 = new ArrayList<Debit>();
			
			for(int i=0; i<debits.size(); i++)
			{
				debits1.add(new Debit(debits.get(i).getAmount(),debits.get(i).getDescription()));
			}
			System.out.println("debits1 ="+debits1);
			User user = new User();
			 // Credit Data Set
				credit.setOpeningbalance(credit.getOpeningbalance());
				credit.setDate(credit.getDate());
				credit.setDebittotal(credit.getDebittotal());
				credit.setDrawertotal(credit.getDrawertotal());
				credit.setDebittotalplusdrawertotal(credit.getDebittotalplusdrawertotal());
				credit.setTodaybusiness(credit.getTodaybusiness());
				credit.setCreatedBy(user.getEmail());
				credit.setCreatedDate(new Date());
				credit.setUpdatedBy(user.getEmail());
				credit.setUpdatedDate(new Date());	
			//  Debit Data set	
				System.out.println("Debit List = " + debits1.size());
				System.out.println("Credit and Debit data seved successfully");
				credit.setDebit(debits1);
				creditService.addCreditDebit(credit);
				model.put("success", "Data Saved Successfully");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:useraccount";
	}
	@RequestMapping(value="/invoicehome", method=RequestMethod.GET)
	public String invoiceHome(@ModelAttribute("command")User user, BindingResult br) {
		return "customerinvoice";
	}
	@RequestMapping(value="/userprofilehome", method=RequestMethod.GET)
	public String userProfileHome(@ModelAttribute("command")User user, BindingResult br) {
		return "userprofile";
	}
}
