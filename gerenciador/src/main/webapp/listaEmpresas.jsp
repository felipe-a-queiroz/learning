<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page
	import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<!DOCTYPE html>
<html>
<body>
	<c:if test="${not empty empresa}">
		Empresa ${empresa} cadastrada com sucesso!
	</c:if>
	<br /> Lista de empresas:
	<br />
	<ul>
		<c:forEach items="${lista}" var="empresa">
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
				<a href="/gerenciador/removeEmpresa?id=${empresa.id}">Remover</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>