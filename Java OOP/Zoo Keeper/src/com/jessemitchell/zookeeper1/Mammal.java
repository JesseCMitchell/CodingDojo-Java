package com.jessemitchell.zookeeper1;

public class Mammal {
	protected Integer energyLevel;
	public Mammal() {
		this.energyLevel = 200;
	}
	
	
	public Integer displayEnergy() {
		System.out.println("Energy level: " + energyLevel);
		return energyLevel;
	}


	public Integer getEnergyLevel() {
		return energyLevel;
	}


	public void setEnergyLevel(Integer energyLevel) {
		this.energyLevel = energyLevel;
	}
		
	
	
	
}
