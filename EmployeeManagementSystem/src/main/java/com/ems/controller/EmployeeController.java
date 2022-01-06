package com.ems.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;



import com.ems.model.Employee;
import com.ems.services.EmployeeService;



@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	public EmployeeController(EmployeeService service) {
		employeeService = service;
	}
	

	
	//Employee Dashboard
	@GetMapping("/")
	public String dashboard(Model model) {
		List <Employee> employee = this.employeeService.allEmployee();
		model.addAttribute("employee", employee);
		return "EMS/employeeDashboard.jsp";
	}
	

	
	//New Employee Page
	@GetMapping("/ems/newemployee")
	public String dashboard(@ModelAttribute("newEmployee") Employee employee, Model model, HttpSession session) {
		model.addAttribute("EmployeeId");
		return "EMS/newEmployee.jsp";
		
	}
	
	
	
	//Add Employee
	@PostMapping("/ems/addEmployee")
	public String addEmployee(@Valid @ModelAttribute("newEmployee") Employee employee, BindingResult result) {
		if(result.hasErrors()){
			return "EMS/NewEmployee.jsp";
		}else {
			
			Employee newEmployee = employeeService.AddEmployee(employee);
			return "redirect:/employeeDashboard";
		
		}
	}
	
	
	
	
	
	//Edit Employee Page
	@GetMapping("/ems/editEmployee/{employeeId}")
	public String editEmployee(@PathVariable("employeeId") Long id, @ModelAttribute("editEemployee")Employee employee, Model model, HttpSession session) {
		Employee editEmployee= employeeService.getOneEmployee(id);
		model.addAttribute("editEmployee", editEmployee);
		return "EMS/editEmployee.jsp";
	}
	
	
	
	
	
	//Update Employee
	@GetMapping("/ems/updateEmployee/{employeeId}")
	public String updateEmployee(@PathVariable("employeeId")Long id, @Valid @ModelAttribute("editEmployee") Employee employee, Model model, BindingResult result, HttpSession session) {
		if (result.hasErrors()) {
			Employee editEmployee = employeeService.getOneEmployee(id);
			model.addAttribute("editEmployee", editEmployee);
			return "EMS/editEmployee.jsp";
		}else {
			
			Employee newEmployee = employeeService.updateEmployee(id, employee.getFirstName(), employee.getLastName(), employee.getEmailId());
			return "redirect:/employeeDashboard";
		}
	}
	
	
	
	
	//Delete Employee
	@GetMapping("/ems/deleteEmployee/{employeeId}")
	public String deleteEmployee(@PathVariable("employeeId")Long id){
		employeeService.deleteEmployee(id);
		return "redirect:/employeedashboard";
	}
		
}

		

