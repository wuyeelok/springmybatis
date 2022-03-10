<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="<c:url value="/static_path_shortcut/css/style.css" />"
	rel="stylesheet">
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
			</tr>

			<c:forEach items="${listemployees}" var="e">
				<tr>
					<td><c:out value="${e.fullname}" /></td>
					<td><c:out value="${e.email}" /></td>
					<td><c:out value="${e.gender}" /></td>
					<td><c:out value="${e.hobbies}" /></td>
					<td><c:out value="${e.country}" /></td>
					<td><c:out value="${e.address}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>