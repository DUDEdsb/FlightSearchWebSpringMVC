/**
 * 
 */
package com.nagarro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.nagarro.services.UserService;

/**
 * @author deepakbisht
 *
 */
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/login")
	public String toLogin() {
		return "login";
	}

	@GetMapping("/register")
	public String toRegister() {
		return "register";
	}

}
