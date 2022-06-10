package com.caresoft.clinicapp;
import java.util.ArrayList;
import java.util.Date;
public class AdminUser extends User implements HIPAACompliantUser, HIPAACompliantAdmin {
	// Implement a constructor that takes an ID and a role
	public AdminUser(Integer id, String role) {
		super(id);
	}
	
    private Integer employeeID;
    private String role;
    private ArrayList<String> securityIncidents;
    
    
    public void newIncident(String notes) {
        String report = String.format(
            "Datetime Submitted: %s \n,  Reported By ID: %s\n Notes: %s \n", 
            new Date(), this.id, notes
        );
        securityIncidents.add(report);
    }
    public void authIncident() {
        String report = String.format(
            "Datetime Submitted: %s \n,  ID: %s\n Notes: %s \n", 
            new Date(), this.id, "AUTHORIZATION ATTEMPT FAILED FOR THIS USER"
        );
        securityIncidents.add(report);
    }
    
	@Override
	public ArrayList<String> reportSecurityIncidents() {
		return securityIncidents;
	}
	
	@Override
	public boolean assignPin(int pin) {
		if (pin >= 6) {
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
	
	// Getters
	public Integer getEmployeeID() {
		return employeeID;
	}
	public String getRole() {
		return role;
	}
	public ArrayList<String> getSecurityIncidents() {
		return securityIncidents;
	}
	
	// Setters
	public void setEmployeeID(Integer employeeID) {
		this.employeeID = employeeID;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public void setSecurityIncidents(ArrayList<String> securityIncidents) {
		this.securityIncidents = securityIncidents;
	}
    
    
}
