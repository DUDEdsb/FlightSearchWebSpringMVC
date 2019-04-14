/**
 * 
 */
package com.nagarro.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.entities.User;
import com.nagarro.services.UserService;
import com.nagarro.validators.UserFormValidator;

/**
 * @author deepakbisht
 *
 */
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	UserFormValidator userFormValidator;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(userFormValidator);
	}

	@GetMapping("/login")
	public String toLogin(Model model) {
		model.addAttribute("loginForm", new User());
		return "login";
	}

	@PostMapping("/login")
	public ModelAndView fromLogin(@RequestParam(value = "logout", required = false) String logout,
			@ModelAttribute("loginForm") User user, HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		if (logout != null) {
			req.getSession().removeAttribute("username");
			mv.addObject("msg", "You've been logged out successfully.");
			mv.setViewName("login");
			return mv;
		}
		if (userService.authenticateUser(user)) {
			req.getSession().setAttribute("username", user.getUsername());
			mv.setViewName("flight");
			return mv;
		} else {
			mv.addObject("msg", "Invalid Credentials!");
			mv.setViewName("login");
			return mv;
		}
	}

	@GetMapping("/register")
	public String toRegister(Model model) {
		model.addAttribute("registerForm", new User());
		return "register";
	}

	@PostMapping("/register")
	public ModelAndView fromRegister(@ModelAttribute("registerForm") User user) {
		ModelAndView mv = new ModelAndView();
		switch (userService.saveUser(user)) {
		case SUCCESSFULLY_ADDED:
			mv.addObject("msg", "Successfully Registered");
			mv.addObject("css", "success");
			mv.setViewName("/register");
			break;
		case USER_ALREADY_EXISTS:
			mv.addObject("msg", "User Already Exists! Please Login!");
			mv.addObject("css", "danger");
			mv.setViewName("/register");
			break;
		default:
		}

		return mv;
	}
}
