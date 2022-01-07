package com.ems.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "employees")
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column (name = "first_name")
	private String firstName;
	
	@Column (name = "last_name")
	private String lastName;
	
	@Column (name = "role")
	private String role;


	@Column (name = "email_id")
	private String emailId;

	@Column (name = "start_date")
	private String startDate;
	
	@Column (name = "emp_Status")
	private String empStatus;
	
	@Column (name = "emp_photo")
	private String empPhoto;
	
	public Employee() {
		
	}
	
	
	public Employee(String firstName, String lastName, String emailId, String startDate, String role, 
			String empStatus, String empPhoto) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailId = emailId;
		this.startDate = startDate;
		this.role = role;
		this.empStatus = empStatus;
		this.empPhoto = empPhoto;
	}
	
	
	
	public String getEmpPhoto() {
		return empPhoto;
	}


	public void setEmpPhoto(String empPhoto) {
		this.empPhoto = empPhoto;
	}


	public String getEmpStatus() {
		return empStatus;
	}


	public void setEmpStatus(String empStatus) {
		this.empStatus = empStatus;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}
	

	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	
}
