package com.jessemitchell.zookeeper1;

public class Bat extends Mammal{
	
	
	public Bat() {
		super();
		this.energyLevel = 300;
	}

	// Methods
	public void fly() {
		System.out.println("The bat has taken flight!");
		energyLevel -= 50;
		displayEnergy();
	}
	
	public void eatHumans() {
		System.out.println("The bat is feasting on humans! Run!");
		energyLevel += 25;
		displayEnergy();
	}
	
	public void attackTown() {
		System.out.println("The town is on fire! The flames are rising! Flee!");
		energyLevel -= 100;
		displayEnergy();
	}
	
}
