package com.phoenixjcam.web.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController
{
	// only for admin role
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage()
	{
		ModelAndView model = new ModelAndView();

		model.addObject("title", "Spring Security");
		model.addObject("message", "only admin has rights to show this page");
		model.setViewName("admin");

		return model;
	}

	// for all logged in users
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboardPage()
	{
		ModelAndView model = new ModelAndView();

		model.addObject("title", "dashboard");
		model.addObject("message", "admin and users page");
		model.setViewName("admin");

		return model;
	}

	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied()
	{
		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (!(auth instanceof AnonymousAuthenticationToken))
		{
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);

			model.addObject("username", userDetail.getUsername());
		}

		model.setViewName("403");
		return model;
	}
}