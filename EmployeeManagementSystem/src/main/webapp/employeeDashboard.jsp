<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Resilient Crew Employee Management System</h1>
	
	<br>
	<br>
	
	<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-5">
                        <h2>Employee Management</h2>
                    </div>
                    <div class="col-sm-7">
                        <a href="/ems/newEmployee" class="btn btn-secondary"><i class="material-icons">&#xE147;</i> <span>Add New Employee</span></a>
                        <a href="#" class="btn btn-secondary"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>						
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Employee ID</th>
                        <th>Name</th>						
                        <th>Start Date</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Email ID</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${employee}" var="employee">
                    <tr>
                        <td><c:out value= "${employee.id}"/></td>
                        
                        <td><a href="#"><img id="empPhoto"  alt=""> <c:out value= "${employee.firstName} ${employee.lastName}" /> </a></td>
                        
                        <td><c:out value= "${employee.startDate}"/></td>                       
                       
                        <td><c:out value= "${employee.role}"/></td>
                        
                        <td><c:out value= "${employee.empStatus}"/></td>
                        
                        <td><c:out value= "${employee.emailId}"/></td>
                        
                        <td>
                            <a href="#" class="settings" title="Settings" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
                            <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                        </td>
                    </tr>
                    
                  
                  </c:forEach>
                </tbody>
            </table>
    </div>
</div>     

</body>
</html>