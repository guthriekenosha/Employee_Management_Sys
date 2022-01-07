package com.ems;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.ems.controllers.EmployeeController;

@SpringBootApplication
public class EmployeeManagementApplication {

	public static void main(String[] args) {
		
		
		SpringApplication.run(EmployeeManagementApplication.class, args);
	}

}
