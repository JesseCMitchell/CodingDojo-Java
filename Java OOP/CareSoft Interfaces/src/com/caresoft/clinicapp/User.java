package com.caresoft.clinicapp;

public class User {
	protected Integer id;
	protected int pin;
	// Implement a constructor that takes an ID
	public User(Integer id){
		this.id = id;
	}
	
	// Getters 
	public Integer getId() {
		return id;
	}
	public int getPin() {
		return pin;
	}
	
	// Setters

	public void setId(Integer id) {
		this.id = id;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	
}
