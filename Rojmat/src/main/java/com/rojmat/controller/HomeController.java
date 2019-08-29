package com.rojmat.controller;


import java.util.Locale;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

		//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		@RequestMapping(value="/",method=RequestMethod.GET)
		public String home(Locale locale, Model model)
		{
			//logger.info("Welocome home the Client locale is{}",locale);
			return "home";
		}
}
