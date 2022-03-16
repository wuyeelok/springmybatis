<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<link href="<c:url value="/css/style.css" />" rel="stylesheet">
</head>
<body>
	<h1>Add Employee</h1>

	<form:form modelAttribute="employee" action="saveProcess" method="post">

		<form:hidden path="id" />
		<input type="hidden" value="<c:out value="${employee.hobbies}"/>"
			id="hiddenTxt" />

		<form:errors path="*" cssClass="form_errorblock form_errorblock--red"
			element="div" />


		<form:label path="fullname">Employee name:</form:label>
		<form:input path="fullname" />
		<br>

		<form:label path="email">Employee email:</form:label>
		<form:input path="email" />
		<br>
		
		Gender:
		<form:radiobutton path="gender" value="Male" label="Male" />
		<form:radiobutton path="gender" value="Female" label="Female" />
		<br>

		Interests:
		<form:checkbox path="hobbies" value="Sports" label="Sports" />
		<form:checkbox path="hobbies" value="Books" label="Books" />
		<form:checkbox path="hobbies" value="Swimming" label="Swimming" />
		<form:checkbox path="hobbies" value="Cycling" label="Cycling" />
		<br>

		<form:label path="country">Country:</form:label>
		<form:select path="country">
			<form:option value="India">India</form:option>
			<form:option value="China">China</form:option>
			<form:option value="America">America</form:option>
			<form:option value="South Africa">South Africa</form:option>
		</form:select>
		<br>

		<form:label path="address">Address:</form:label>
		<form:textarea path="address" />
		<br>

		<input type="submit" value="Save Employee" class="btn" />
	</form:form>

	<script src="<c:url value="/js/jquery-3.6.0.min.js" />"></script>
	<script src="<c:url value="/js/script.js" />"></script>
</body>
</html>