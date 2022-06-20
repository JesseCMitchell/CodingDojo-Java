package com.codingdojo.dojosninjas.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="ninjas")
public class Ninja {
// ========== Primary Key ===================
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

// ========== Member Variables ==============
	@NotBlank(message="Field Required")
	@Size(min = 3, message="Name must be at least 3 characters")
	private String first_name;
	
	@NotBlank(message="Field Required")
	@Size(min = 3, message="Name must be at least 3 characters")
	private String last_name;
	
	private int age;
	
// ========== Data Creation Trackers ========
    @Column(updatable=false) // This will not allow the createdAt column to be updated after creation
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
// ============ Relationships ================
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="dojo_id")
    private Dojo dojo;
    
// ========== Constructors ===================
	public Ninja() {}

//	public Ninja(String first_name, String last_name, Integer age) {
//		this.first_name = first_name;
//		this.last_name = last_name;
//		this.age = age;
//	}

// ========== Data Creation Event ===========
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    
    }
//	=========== DOJO Getters / Setters ==========
    public Dojo getDojo() {
		return dojo;
	}
    
	public void setDojo(Dojo dojo) {
		this.dojo = dojo;
	}
	
//	=========== Getters / Setters ===============
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	


}
