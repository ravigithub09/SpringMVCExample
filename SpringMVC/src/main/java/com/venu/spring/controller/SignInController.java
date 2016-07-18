package com.venu.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.venu.spring.bean.User;
import com.venu.spring.service.SignInService;

@Controller
public class SignInController {
	@Autowired
	private SignInService signInService;

	@RequestMapping(value = { "loginPage", "/" })
	public ModelAndView loginPage(@ModelAttribute User user) {

		return new ModelAndView("signIn");
	}

	@RequestMapping("loginUser")
	public ModelAndView loginUser(@ModelAttribute User user) {
		// ModelAndView modelAndView = new ModelAndView("signUpForm");
		if (user.getEmailId().length() == 0) {
			
			return new ModelAndView("redirect:signUp");
		}
		User userObject = signInService.signIn(user);
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("firstName", userObject.getFirstName());
		modelAndView.addObject("lastName", userObject.getLastName());
		return modelAndView;
	}
}
