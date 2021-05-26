<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Producto</title>
<link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />

</head>
<body onload="onload();">
	<h2>Editar Producto</h2>
	<form action="/product/update" method="post">
		<input type="hidden" name="id" value="${product.id}">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th>Código</th>
					<td><input type="text" name="code" required="required"
						value="${product.code}"></td>
				</tr>
				<tr>
					<th>Nombre</th>
					<td><input type="text" name="name" required="required"
						value="${product.name}"></td>
				</tr>
				<tr>
					<th>Precio</th>
					<td><input type="number" name="price" required="required"
						min="1" value="${product.price}"></td>
				</tr>
				<tr>
					<th>Cantidad</th>
					<td><input type="number" name="quantity" required="required"
						min="1" value="${product.quantity}"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Editar Producto"
						class="btn btn-success">
				</tr>
			</tbody>
		</table>
	</form>
	<a href="/product/list" class="btn btn-success">Atrás</a>

	<script type="application/javascript" src="js/jquery.js"></script>
	<script type="application/javascript" src="js/bootstrap.js"></script>
</body>
</html>

