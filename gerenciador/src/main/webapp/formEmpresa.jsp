<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/alteraEmpresa" var="linkServletAlteraEmpresa" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<form action="${linkServletAlteraEmpresa}" method="post">
		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" value="${empresa.nome}" /></td>
			</tr>
			<tr>
				<td>Data de abertura:</td>

				<td><input type="text" name="dataAbertura"
					value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />" /></td>
			</tr>
			<tr>
				<td><input type="hidden" name="id" value="${empresa.id}" /><input
					type="submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>