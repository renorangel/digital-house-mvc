<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.city {
    float: left;
    margin: 5px;
    padding: 15px;
    max-width: 300px;
    height: 300px;
    border: 1px solid black;
} 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Productos</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<h2>Lista de Productos</h2>
	<table class="table table-bordered">
		<tr>
			<th>Código</th>
			<th>Nombre</th>
			<th>Precio</th>
			<th>Cantidad</th>
		</tr>
		<tbody>
			<c:forEach items="${products}" var="product" varStatus="itr">
				<tr>
					<td>${product.code}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td><a href="/product/edit/${product.id}" class="btn btn-warning">Editar</a></td>
					<td><a href="/product/${product.id}" class="btn btn-warning">Borrar</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<a href="/product/create" class="btn btn-success">Nuevo producto</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>