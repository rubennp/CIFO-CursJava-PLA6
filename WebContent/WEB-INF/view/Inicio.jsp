<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
	<spring:url value="/resources/styles.css" var="styleCSS" />
	<link href="${styleCSS}" rel="stylesheet" />
	<meta charset="ISO-8859-1">
	<title>Alumnos</title>
</head>
<body>
	<h1>Alumnos</h1>
	<a href="alumno/form">Dar de alta alumno &raquo;</a>
</body>
</html>