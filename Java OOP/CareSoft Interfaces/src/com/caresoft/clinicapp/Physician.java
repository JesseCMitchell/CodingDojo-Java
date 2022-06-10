package com.caresoft.clinicapp;
import java.util.ArrayList;
import java.util.Date;
public class Physician extends User implements HIPAACompliantUser {
	// TO DO: Constructor that takes an ID
	public Physician(Integer id) {
		super(id);
		
	}

	private ArrayList<String> patientNotes;
	
	public void newPatientNotes(String notes, String patientName, Date date) {
        String report = String.format(
            "Datetime Submitted: %s \n", date);
        report += String.format("Reported By ID: %s\n", this.id);
        report += String.format("Patient Name: %s\n", patientName);
        report += String.format("Notes: %s \n", notes);
        this.patientNotes.add(report);
    }

    
    // Getter
	public ArrayList<String> getPatientNotes() {
		return patientNotes;
	}


	// Setter
	public void setPatientNotes(ArrayList<String> patientNotes) {
		this.patientNotes = patientNotes;
	}


	@Override
	public boolean assignPin(int pin) {
		if (pin == 4) {
			return true;
		}else {
			return false;	
		}
	}

	@Override
	public boolean accessAuthorized(Integer confirmedAuthID) {
		if (confirmedAuthID == id) {
			return true;
		}else {
			return false;
		}
	}
	
	
}
