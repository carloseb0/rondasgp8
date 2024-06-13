<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
	
	

	
	
	
</head>
<body>
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

	<h1>LISTAGEM DE RONDAS</h1>
	
	<form action="RondaCon">
		<button type="submit" name="incluir"><i class="fas fa-plus-circle"></i> Incluir</button>
		
		<table border="1" class="table table-hover table-condensed">
		    <thead>
		       <tr>
		           <td>Id</td>
		           <td>Data Inicio</td>
		           <td>Data Final</td>
		           <td>Lat</td>
		           <td>Log</td>
		           <td>Data Ultima</td>
		           <td></td>
		           <td></td>
		       </tr>
		    </thead>
			<c:forEach items="${lista}" var="p" varStatus="cont">
			   <tr>
			      <td>${p.id}</td>
			      <td>${p.dataHoraInicio}</td>   
			      <td>${p.dataHoraFim}</td>
			      <td>${p.latUltima}</td>    
			      <td>${p.lonUltima}</td>
			      <td>${p.dataHoraUltima}</td>
			      <td><button type="submit" name="vigilantes" value="${p.id}">Vigilantes</button></td>
			      
			      <td><button type="submit" name="alterar" value="${p.id}">Alterar</button></td>
			       <td><button type="submit" name="excluir" value="${p.id}">Excluir</button></td>
			   </tr>
		    </c:forEach>
		</table>
	</form>

</body>
</html>
