package com;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
class MyController
{
	 @RequestMapping(value = "/index",method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("Git Hub connected 123.....controller..");
		model.addAttribute("message","I love India...");
		return "home";
	}
	 
	 @GetMapping("/profile")
		public String profile(ModelAndView mv) {
			System.out.println("controller..");
			
			return "profile";
		}
}