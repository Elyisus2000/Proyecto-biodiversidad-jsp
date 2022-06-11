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
		url(https://images.unsplash.com/photo-1626826248416-a899c24f4e07?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80);
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}

.titulos {
	font-weight: bold;
	font-size: 17px;
}

.titulos:hover {
	color: red;
}

input[type="text"] {
	background-color: #f4f4f4
}

input[type="text"]:focus {
	transition: 2s;
	border-color: #0000;
}

.container {
	display: flex;
	justify-content: center;
}

.boton {
	display: flex;
	justify-content: center;
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
	<div class="container col-md-4">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${user != null}">
EDITAR ESPECIE
</c:if>
						<c:if test="${user == null}">
INSERTAR NUEVA ESPECIE
</c:if>
					</h2>
				</caption>
				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				<fieldset class="form-group">
					<label class="titulos">Nombre de especie</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label class="titulos">Clase</label> <input type="text"
						value="<c:out value='${user.clase}' />" class="form-control"
						name="clase">
				</fieldset>

				<fieldset class="form-group">
					<label class="titulos">Reino</label> <input type="text"
						value="<c:out value='${user.reino}' />" class="form-control"
						name="reino">
				</fieldset>

				<fieldset class="form-group">
					<label class="titulos">Familia</label> <input type="text"
						value="<c:out value='${user.familia}' />" class="form-control"
						name="familia">
				</fieldset>
				<fieldset class="form-group">
					<label class="titulos">Continente</label> <input type="text"
						value="<c:out value='${user.continente}' />" class="form-control"
						name="continente">
				</fieldset>
				<fieldset class="form-group">
					<label class="titulos">Pais</label> <input type="text"
						value="<c:out value='${user.pais}' />" class="form-control"
						name="pais">
				</fieldset>
				<fieldset class="form-group">
					<label class="titulos">Ciudad</label> <input type="text"
						value="<c:out value='${user.departamento}' />"
						class="form-control" name="departamento">
				</fieldset>
				<div class="boton">
					<button type="submit" class="btn btn-success">Guardar</button>
				</div>

			</div>
		</div>
	</div>
</body>
</html>