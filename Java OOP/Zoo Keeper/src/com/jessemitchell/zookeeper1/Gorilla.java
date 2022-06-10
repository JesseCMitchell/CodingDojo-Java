package com.jessemitchell.zookeeper1;

public class Gorilla extends Mammal {
	
	
	public Gorilla() {
		super();
		// TODO Auto-generated constructor stub
	}

	// Methods
	public void throwSomething() {
		System.out.println("The gorilla is angry and has thrown something at you.");
		energyLevel -= 5;
		displayEnergy();
	}
	
	public void eatBananas() {
		System.out.println("The gorilla is enjoying a banana to regain it's energy.");
		energyLevel += 10;
		displayEnergy();
	}

	public void climb() {
		System.out.println("The gorilla has climbed a tree to get away from you. The gorilla is now tired.");
		energyLevel -= 10;
		displayEnergy();
	}
	
}
