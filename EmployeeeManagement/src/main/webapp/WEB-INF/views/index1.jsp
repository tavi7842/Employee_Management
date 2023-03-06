<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script>
	window.onload = function() {
		var checkboxes = document.getElementsByName("insurance");
		var currentCheckbox = null;
		function uncheckCheckbox() {
			for (var i = 0; i < checkboxes.length; i++) {
				checkboxes[i].checked = false;
			}
		}
		function checkCheckbox() {
			currentCheckbox.checked = true;
		}
		for (var i = 0; i < checkboxes.length; i++) {
			checkboxes[i].addEventListener("click", function() {
				currentCheckbox = this;
				uncheckCheckbox();
				checkCheckbox();
			});
		}
	};
</script>
</head>
<body>
	<div class="container mt-5">
		<h1 class="text-center">Update Form</h1>
		<form action="${pageContext.request.contextPath}/addEmploye" method="post">
			<div class="form-group">
				<label for="ID">id</label> <input type="text" class="form-control"
					placeholder="Enter id" name="id" value="${employes.id}">
			</div>
			<div class="form-group">
				<label for="exampleInputUsername">employeeName</label> <input
					type="text" class="form-control" placeholder="Enter employee name"
					name="ename">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">email</label> <input type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email" name="email">
			</div>
			<div class="form-group">
				<label for="exampleInputSalary">Salary</label> <input type="text"
					class="form-control" id="exampleInputSalary" placeholder="salary"
					name="salary">
			</div>
			<div class="form-group">
				<label for="exampleInputPhnno">phoneNumber</label> <input
					type="text" class="form-control" id="exampleInputPhnno"
					placeholder="phonenumber" name="phnno">
			</div>
			<div class="form-group">
				<label for="Gender">Gender</label><br> <br> <label
					for="Gender">Male</label> <input type="radio" id="Gender"
					name="gender"value="male"> <label
					for="Gender">Female</label> <input type="radio" id="Gender"
					name="gender" value="female"> <label
					for="Gender">Others</label> <input type="radio" id="Gender"
					name="gender" value="others">
			</div>
			 
			<div class="form-group">
				<label for="Insurance">Insurance</label><br> <br> <label
					for="Insurance">Yes</label> <input type="checkbox" id="Insurance"
					name="insurance" value="yes"> <label
					for="Insurance">No</label> <input type="checkbox" id="Insurance"
					name="insurance" value="no">  
			</div>
			<div class="form-group">
				<label for="Department">Department</label> <select
					class="form-control" id="Department" name="dept">
					<option class="form-control" id="Department" name="dept"
						value="select">select</option>
					<option class="form-control" id="Department" name="dept"
						value="Administartion">Administration</option>
					<option class="form-control" id="Department" name="dept"
						value="Testing">Testing</option>
					<option class="form-control" id="Department" name="dept"
						value="Developer">Developer</option>
				</select>
			</div>
			<button type="Submit" class="btn btn-primary">Update</button>
		</form>
	</div>
</body>
</html>