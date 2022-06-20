package com.codingdojo.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosninjas.models.Dojo;
import com.codingdojo.dojosninjas.models.Ninja;
import com.codingdojo.dojosninjas.repositories.DojoRepo;
import com.codingdojo.dojosninjas.repositories.NinjaRepo;

@Service
public class MainService {

	@Autowired
	private DojoRepo dojoRepo;

    @Autowired
	private NinjaRepo ninjaRepo;

// ========== Create / Update ===============	
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
    public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}

	public Ninja updateNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	
// ========== Read ==========================
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	
	
	public Dojo findDojo(Long id) {
		// Optional means the object can exist or not
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}else {
			return null;
		}
	}
	
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		if(optionalNinja.isPresent()) {
			return optionalNinja.get(); 
		}else {
			return null;
		}
	}
	
// ========== Delete ========================
	public void deleteDojo(Dojo dojo) {
		dojoRepo.delete(dojo);
	}
	
	public void deleteNinja(Long id) {
		ninjaRepo.deleteById(id);
	}
}
