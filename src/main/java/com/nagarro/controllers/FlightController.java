/**
 * 
 */
package com.nagarro.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author deepakbisht
 *
 */
@Controller
public class FlightController {
	@GetMapping("/flights")
	public String toFlight() {
		return "flight";
	}
}
