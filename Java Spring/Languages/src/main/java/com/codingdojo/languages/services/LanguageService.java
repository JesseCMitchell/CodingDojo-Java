package com.codingdojo.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.languages.models.Language;
import com.codingdojo.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	
	private final LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	public List<Language> allLanguages(){
		return languageRepository.findAll();
	}
	
	public Language findLanguage(Long id) {
		// Optional means the object can exist or not
		Optional<Language> optionalLanguage = languageRepository.findById(id);
		if(optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		}else {
			return null;
		}
	}
	
	public Language createLanguage(Language language) {
		return languageRepository.save(language);
	}
	
	public Language updateLanguage(Language language) {
		return languageRepository.save(language);
	}
	
	public void deleteLanguage(Language language) {
		languageRepository.delete(language);
	}
}
