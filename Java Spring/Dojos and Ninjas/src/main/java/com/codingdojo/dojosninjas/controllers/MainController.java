package com.codingdojo.dojosninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.dojosninjas.models.Dojo;
import com.codingdojo.dojosninjas.models.Ninja;
import com.codingdojo.dojosninjas.services.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
//	============ Index Route ================
	@GetMapping("/")
	public String home() {
		return "redirect:/dojos";
	}

// ========== Display =======================

// ========== Get Dojo ======================
	@GetMapping("/dojos")
	public String index(@ModelAttribute("dojo") Dojo dojo, Model model) {
		List<Dojo> dojos = mainService.allDojos();
		model.addAttribute("dojos", dojos);
		return "index.jsp";
	}
	
// ============ Get One Dojo ======================
	@GetMapping("/dojos/{id}")
	public String ninjasDojo(@PathVariable("id") Long id, Model model) {
		Dojo dojo = mainService.findDojo(id);
		model.addAttribute("dojo", dojo);
		return "show.jsp";
	}
	
// ========== New Dojo =======================
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	@PostMapping("/dojos/new")
	public String index(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Dojo> dojos = mainService.allDojos();
			model.addAttribute("dojos", dojos);
			return "newDojo.jsp";
		}else {
			mainService.createDojo(dojo);
			return "redirect:/dojos";
		}
	}

// ============ New Ninja =====================
    @GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("dojos", mainService.allDojos());
		return "newNinja.jsp";
	}

    @PostMapping("/ninjas/new")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			List<Dojo> allDojos = mainService.allDojos();
			model.addAttribute("dojos", allDojos);
			return "newNinja.jsp";
		} else {
			mainService.createNinja(ninja);
			return "redirect:/dojos/" + ninja.getDojo().getId();
		}
	}


	
// ============ Update Ninja ====================
	
	@GetMapping("/ninjas/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {	
		Ninja ninja = mainService.findNinja(id);
		model.addAttribute("ninja", ninja);
		model.addAttribute("dojos", mainService.allDojos());
		return "edit.jsp";
	}
	
	@PutMapping("/ninjas/{id}/update")
	public String update(@PathVariable("id") Long id, Model model, @Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			List<Dojo> allDojos = mainService.allDojos();
			model.addAttribute("dojos", allDojos);
			return "edit.jsp";
		}else {
			mainService.updateNinja(ninja);
			return "redirect:/dojos/"+ ninja.getDojo().getId();
		}
	}

// ============ Delete =============================
	@DeleteMapping("/ninjas/{id}/delete")
	public String deleteNinja(@PathVariable("id") Long id) {
		mainService.deleteNinja(id);
		return "redirect:/dojos";
	}
}
