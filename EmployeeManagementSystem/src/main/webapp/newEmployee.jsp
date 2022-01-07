<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form action="/ems/addEmployee" method="post"
			modelAttribute="newEmployee">

		<div class="form-group"> <!-- First Name -->
			<label for="firstName" class="control-label">First Name</label>
			<input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name">
		</div>	

		<div class="form-group"> <!-- Last Name -->
			<label for="lastName" class="control-label">Last Name</label>
			<input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name">
		</div>					
							
		<div class="form-group"> <!--Date Hired  -->
			<label for="startDate" class="control-label">Date Hired</label>
			<input type="text" class="form-control" id="startDate" name="startDate" placeholder="Start Date">
		</div>	

		<div class="form-group"> <!-- Employee Role-->
			<label for="role" class="control-label">Employee Role</label>
			<input type="text" class="form-control" id="role" name="role" placeholder="Employee Role">
		</div>									
							
		<div class="form-group"> <!-- Employee Status -->
		<label for="empStatus" class="control-label">Employee Status</label>
		<select class="form-control" id="empStatus">
			<option value="A">Active</option>
			<option value="I">Inactive</option>
			<option value="T">Terminated</option>
			<option value="L">On Leave</option>
		</select>					
	</div>
	
	<div class="custom-file">
  		<input type="file" name=empPhoto id="empPhoto" accept="image/png image/jpg"  />
  		<label class="custom-file-label" for="empPhoto">Upload Employee Photo</label>
	</div>
	
		<div class="form-group"> <!-- Submit Button -->
			<button type="submit" class="btn btn-primary">Add Employee</button>
		</div>     
	
	</form:form>	

</body>
</html>