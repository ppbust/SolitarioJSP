<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registrar</title>
</head>
<body>
    <h1>Solitario</h1>
    <h2>Registrar</h2>
	<c:set var="bean" scope="request" value="${loginB}" />
	<form action="solitaire" method="post">
		<input type="hidden" name="action" value="register" />
		<c:if test="${bean.hasErrors()}">
			<p>Errores: ${bean.errors}</p>
		</c:if>
		<p>Nick: <input name="nick" type="text" value="${bean.user.nick}" /></p>
        <p>Contraseņa: <input name="password" type="password" value="${bean.password}" /></p>
        <p>Repetir contraseņa: <input name="password2" type="password" value="${bean.user.password}" /></p>
        <p>Nombre: <input name="firstName" type="text" value="${bean.user.firstName}" /></p>
        <p>Apellidos: <input name="lastName" type="text" value="${bean.user.lastName}" /></p>
        <p>Edad: <input name="age" type="text" value="${bean.user.age}" /></p>
        <p>Sexo: <select name="gender" size="1">
            <c:forEach var="xxx" items="${bean.genders}"><option value="${xxx}">${xxx}</option></c:forEach>
        </select></p>
        <p>Provincia: <input name="country" type="text" value="${bean.user.country}" /></p>
		<p><input type="reset" /><input type="submit" value="Register" /></p>
	</form>
	<p><a href="?action=home">Home</a></p>
</body>
</html>