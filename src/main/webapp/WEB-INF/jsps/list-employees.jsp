<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Employee</title>

<link href="<c:url value="/css/style.css" />" rel="stylesheet">
</head>
<body>

	<h1>List Employees</h1>

	<a href="<c:url value="/showFromForAddEmployee" />"
		class="btn btn-green">New a employee</a>
	<br>
	<br>
	<div>
		<table border="1">
			<tr>
				<th>Full Name</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Hobbies</th>
				<th>Country</th>
				<th>Address</th>
				<th>Actions</th>
			</tr>

			<c:forEach items="${listemployees}" var="e">

				<c:url var="deleteLink" value="/deleteEmployee">

					<c:param name="employeeId" value="${e.id}" />

				</c:url>

				<c:url var="updateLink" value="/editEmployee">

					<c:param name="employeeId" value="${e.id}" />

				</c:url>

				<tr>
					<td><c:out value="${e.fullname}" /></td>
					<td><c:out value="${e.email}" /></td>
					<td><c:out value="${e.gender}" /></td>
					<td><c:out value="${e.hobbies}" /></td>
					<td><c:out value="${e.country}" /></td>
					<td><c:out value="${e.address}" /></td>
					<td><a href="<c:out value="${updateLink}" />"
						class="btn btn_update">Update</a> | <a
						href="<c:out value="${deleteLink}" />" class="btn btn__delete">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<script src="<c:url value="/js/jquery-3.6.0.min.js" />"></script>
	<script src="<c:url value="/js/script.js" />"></script>
</body>
</html>