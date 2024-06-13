<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<body>
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
		
		<script type="text/javascript">
	    function confirmar(){
	    	$.confirm({
	    	    title: 'Confirmar',
	    	    content: 'Confirmar a exclusão?',
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
	    	        	text: 'Não',
	    	            btnClass: 'btn-dark',
	    	            action: function(){ 
	    	            	// programar algo se clicou não
	    	        	}
	    	        },
	    	    }
	    	});
	    	
	    	
	    }
	</script>
	
<h1>LISTAGEM DE USUÁRIOS</h1>
<form action="UsuarioCon">
	<button type="submit" name="incluir">Incluir</button>
	
	<table border="1" class="table table-hover table-condensed">
		<c:forEach items="${lista}" var="u" varStatus="cont">
		   <tr>
		      <td>${u.id}</td>
		      <td>${u.nome}</td>    
		      <td>${u.email}</td>
		      <td>${u.senha}</td>
		      <td></td>
		      <td><button type="submit" name="alterar" value="${u.id}">Alterar</button></td>
		      <td><button type="submit" name="excluir" value="${u.id}">Excluir</button></td>
		   </tr>
	    </c:forEach>
	</table>
</form>

</body>
</html>