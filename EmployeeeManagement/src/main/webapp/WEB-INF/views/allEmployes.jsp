<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<center><h1>Get All Users</h1></center>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
<body>
	<div class="container mt=5">
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">id</th>
					<th scope="col">employeName</th>
					<th scope="col">Email</th>
					<th scope="col">Salary</th>
					<th scope="col">phnno</th>
					<th scope="col">Gender</th>
					<th scope="col">dept</th>
					<th scope="col">insurance</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${employes}" var="emp">
					<tr>
						<th scope="row">${emp.id}</th>
						<td>${emp.ename}</td>
						<td>${emp.email}</td>
						<td>${emp.salary}</td>
						<td>${emp.phnno}</td>
						<td>${emp.gender}</td>
						<td>${emp.dept}</td>
						<td>${emp.insurance}</td>
						<td><a href="delete/${emp.id}" class="btn btn-danger">delete</a>
							<a href="update/${emp.id}" class="btn btn-primary">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/EmployeeeManagement">AddEmployee</a>
	</div>
</body>
</html>