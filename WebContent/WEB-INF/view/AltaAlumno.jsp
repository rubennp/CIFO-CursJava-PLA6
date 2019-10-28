<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
	<spring:url value="/resources/styles.css" var="styleCSS" />
	<link href="${styleCSS}" rel="stylesheet" />
	<meta charset="ISO-8859-1">
	<title>Alta Alumno</title>
</head>
<body>
	<h1>Dar de alta alumno:</h1>
	<form:form action="procesar" modelAttribute="alumno">
		<fieldset>
			<dl>
				<dt>Nombre:</dt>
				<dd>
					<form:input path="nombre" />
					<form:errors path="nombre" cssClass="error" />
				</dd>
				<dt>DNI:</dt>
				<dd>
					<form:input path="dni" />
					<form:errors path="dni" cssClass="error" />
				</dd>
				<dt>Correo electrónico:</dt>
				<dd>
					<form:input path="email" />
					<form:errors path="email" cssClass="error" />
				</dd>
				<dt>Becado?</dt>
				<dd><form:radiobuttons path="becado" items="${alumno.listaBecado}" /></dd>
				<dt>Asignaturas:
				</dt>
				<dd><form:checkboxes path="asignaturas" items="${alumno.listaAsignaturas}"/></dd>
			</dl>
		</fieldset>
		<div class="buttons">
			<button type="submit">Enviar &#10003;</button>
			<button type="reset">Vaciar &#10007;</button>
		</div>
	</form:form>
	<p><a href="/CIFO-CursJava-PLA6">&laquo; Inicio</a></p>
</body>
</html>