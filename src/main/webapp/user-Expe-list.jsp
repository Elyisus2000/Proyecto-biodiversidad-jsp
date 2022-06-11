<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>LISTA DE ESPÉCIMENES</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<style>
body {
	background-image:
		url(https://images.unsplash.com/photo-1611536349817-f4b3664ad419?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80);
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	background-color: #f3f3f3;
	opacity: 0.9;
	padding: 10px;
	border-radius: 5px;
}

.text-center:hover {
	color: red;
	font-weight: bold;
	font-size: 35px;
	transition: 0.7s;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-info">

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/listUser"
					class="nav-link">VER ESPÉCIMENES</a></li>
				<li><a href="<%=request.getContextPath()%>/new"
					class="nav-link">INSERTAR ESPECIE</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->
		<div class="container">
			<h4 class="text-center">LISTA DE ESPECIES</h4>
			<br>
			<table
				class="table table-bordered table-striped table-hover table-light">
				<thead class="thead-dark">
					<tr>
						<th>ID</th>
						<th>NOMBRE DE ESPECIE</th>
						<th>CLASE</th>
						<th>REINO</th>
						<th>FAMILIA</th>
						<th>CONTINENTE</th>
						<th>PAIS</th>
						<th>CIUDAD</th>
						<th>ACCIONES</th>
					</tr>
				</thead>
				<tbody>
					<!-- for (Todo todo: todos) { -->
					<c:forEach var="user" items="${listUser}">
						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.clase}" /></td>
							<td><c:out value="${user.reino}" /></td>
							<td><c:out value="${user.familia}" /></td>
							<td><c:out value="${user.continente}" /></td>
							<td><c:out value="${user.pais}" /></td>
							<td><c:out value="${user.departamento}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">EDITAR</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">BORRAR</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>