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
	
		<script type="text/javascript">
	    function confirmar(){
	    	$.confirm({
	    	    title: 'Confirmar',
	    	    content: 'Confirmar a exclus�o?',
	    	    type: 'orange',
	    	    typeAnimated: true,
	    	    buttons: {
	    	        Sim: { 
	    	        	text: 'Sim',
	    	            btnClass: 'btn-orange',
	    	            action: function(){ 
	    	            	$("#excluir").attr("type", "submit");
	    	            	$("#excluir").click();
	    	        	}
	    	        },
	    	        Nao: { 
	    	        	text: 'N�o',
	    	            btnClass: 'btn-dark',
	    	            action: function(){ 
	    	            	// programar algo se clicou n�o
	    	        	}
	    	        },
	    	    }
	    	});
	    	
	    	
	    }
	</script>
	
	

<h1>LISTAGEM DE LOCALIZA��O</h1>

<form action="LocalizacaoCon">
	<button type="submit" name="incluir">Incluir</button>
	
	<table border="1" class="table table-hover table-condensed">
	
	  <thead>
		       <tr>
		           <td>Id</td>
		           <td>Data hora</td>
		           <td>Latitude</td>
		           <td>Longitude</td>
		           
		       </tr>
		    </thead>
	
		<c:forEach items="${lista}" var="p" varStatus="cont">
		   <tr>
		      <td>${p.id}</td>
		      <td>${p.horaData}</td>    
		      <td>${p.latitude}</td>
		      <td>${p.longitude}</td>
		      <td><button type="submit" name="alterar" value="${p.id}">Alterar</button></td>
		      <td><button type="submit" name="excluir" value="${p.id}">Excluir</button></td>
		   </tr>
	    </c:forEach>
	</table>
</form>

</body>
</html>