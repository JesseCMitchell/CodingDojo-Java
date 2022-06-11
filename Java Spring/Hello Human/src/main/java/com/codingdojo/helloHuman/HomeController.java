package com.codingdojo.helloHuman;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
	@RequestMapping("/")
	public String index(@RequestParam(value="name", required=false) String name,  
			@RequestParam(value="last_name", required=false) String last_name,
			@RequestParam(value="times", required=false) Integer times){
		if(times != null && times > 0) {
			String output = "";
			for(int i = 0; i < times; i++) {
				if(name == null && last_name == null) {
					output += "Hello there, General Kenobi";
				}else {
					output += "Hello there, " + name + " " + last_name + " ";
				}
			}
			return output;
		}
		
		
		
		
		if(name == null && last_name == null) {
			return "Hello there, General Kenobi";
		}else {
			return "Hello there, " + name + " " + last_name;
		}
		
	}

}
