/**
 * 
 */
package com.nagarro.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author deepakbisht
 *
 */
@Controller
public class DefaultController {
	@RequestMapping("/")
	public String defaultPage() {
		return "index";
	}
}
