<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Update Employee Information</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-warning">
        <a class="navbar-brand" href="#">Resilient Crew Employee Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto topnav">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Register New Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Another Page</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Another Page</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Resources
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Another Page</a>
                        <a class="dropdown-item" href="#">Another Page</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Another Page</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Enter IT Ticket</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-primary text-white" type="button" href="#" data-toggle="modal" data-target="#myModal">Log Out</a>                  
                </li>

            </ul>
        </div>

            <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Customer Sign In</h4>
                    <button type="button" class="close" data-dismiss="modal">×</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <form>
                        <label class="sr-only" for="usrname">Username</label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                        </div>


                        <label class="sr-only" for="Password">Name</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-key"></i></span>
                            </div>
                            <input id="Password" type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon2">
                        </div>
                    </form>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" >Sign In</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>

            </div>
        </div>
    </div>
 
    </nav>


<form:form action="/ems/updateEmployee/${editEmployee.id}" method="post"
			modelAttribute="editEmployee">

		<div class="form-group"> <!-- First Name -->
			<label for="firstName" class="control-label">First Name</label>
			<input type="text" class="form-control" id="${editEmployee.firstName }" name="firstName" placeholder="First Name">
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
			<button type="submit" class="btn btn-primary">Update</button>
		</div>     
	
	</form:form>	

</body>
</html>