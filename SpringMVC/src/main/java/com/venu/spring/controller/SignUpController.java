package com.venu.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.venu.spring.bean.User;
import com.venu.spring.service.SignUpService;

@Controller
public class SignUpController {

	public SignUpController() {
		System.out.println("Signup controller");
	}

	@Autowired
	private SignUpService signUpService;

	@RequestMapping("signUp")
	public ModelAndView signUpUser(@ModelAttribute User user) {
		// ModelAndView modelAndView = new ModelAndView("signUpForm");
		return new ModelAndView("signUpForm");
	}

	@RequestMapping("saveUser")
	public ModelAndView saveUser(@ModelAttribute User user) {
		signUpService.signUp(user);
		return new ModelAndView("redirect:loginPage");
	}

}
