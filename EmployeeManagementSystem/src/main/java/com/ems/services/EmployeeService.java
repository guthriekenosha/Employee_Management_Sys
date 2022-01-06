package com.ems.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ems.Repository.EmployeeRepository;
import com.ems.model.Employee;

@Service
public class EmployeeService {

	
@Autowired
private EmployeeRepository employeeRepo;
		
	
	public EmployeeService( EmployeeRepository employeeRepo){
		this.employeeRepo = employeeRepo;
		}
	
		
		
	//List all employees
	public List <Employee> allEmployee(){
		return employeeRepo.findAll();
	}
	
	public Employee getEmployee(Long id) {
		return employeeRepo.findById(id).orElse(null);
		
	}
	
	
	//Create a new employee
	public Employee AddEmployee(Employee employee) {
		return employeeRepo.save(employee);
		
	}
	
	
	//Get one employee
	public Employee getOneEmployee(Long id) {
		return employeeRepo.findById(id).orElse(null);
	}
	
	//Update employee
	public Employee updateEmployee(Long id, String firstName, String lastName, String emailId) {
		Employee employee = getOneEmployee(id);
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setEmailId(emailId);
		return employeeRepo.save(employee);
	}
	
	//Delete employee
	public void deleteEmployee(Long id) {
	employeeRepo.deleteById(id);
	}
}
