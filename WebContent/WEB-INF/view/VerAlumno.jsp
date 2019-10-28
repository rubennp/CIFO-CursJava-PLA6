<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
	<spring:url value="/resources/styles.css" var="styleCSS" />
	<link href="${styleCSS}" rel="stylesheet" />
	<meta charset="ISO-8859-1">
	<title>Datos Alumno</title>
</head>
<body>
	<h1>Datos del Alumno:</h1>
	<dl>
		<dt>Nombre:</dt>
		<dd>${alumno.nombre}</dd>
		<dt>DNI:</dt>
		<dd>${alumno.dni}</dd>
		<dt>Correo Electrónico:</dt>
		<dd>${alumno.email}</dd>
		<dt>Becado</dt>
		<dd>${alumno.listaBecado.get(alumno.becado)}</dd>
		<dt>Asignaturas:</dt>
		<dd>
			<ul>
				<c:forEach var="asignatura" items="${alumno.asignaturas}">
					<li>${asignatura}</li>
				</c:forEach>
			</ul>
		</dd>
	</dl>
	<a href="/CIFO-CursJava-PLA6">&#171; Inicio</a>
	<a href="/CIFO-CursJava-PLA6/alumno/form">&#171; Alta alumno</a>
</body>
</html>