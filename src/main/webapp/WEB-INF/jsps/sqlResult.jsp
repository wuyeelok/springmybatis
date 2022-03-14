<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show Result</title>

<link href="<c:url value="/css/style.css" />" rel="stylesheet">
</head>
<body>

	<h1>show Result</h1>

	<c:forEach items="${publishers}" var="p">

		<div>
			<p>
				<c:out value="${p.id}" />
				,
				<c:out value="${p.name}" />
				,
				<c:out value="${p.phoneNumber}" />
			</p>
		</div>

	</c:forEach>

	<script src="<c:url value="/js/jquery-3.6.0.min.js" />"></script>
	<script src="<c:url value="/js/script.js" />"></script>
</body>
</html>