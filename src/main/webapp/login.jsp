<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
* {
	padding: 0;
	margin: 0;
}

body, html {
	height: 100%;
}

body {
	background-image:
		url("https://images5.alphacoders.com/407/thumb-1920-407870.jpg");
	box-sizing: border-box;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100%;
}

.form-box {
	width: 300px;
	padding: 40px;
	background-color: #f3f3f3;
	border-radius: 10px;
	text-align: center;
	opacity: 0.9;
}

.form-title {
	color: #000;
	font-weight: 400px;
}

.form-title:hover {
	color: red;
}

.form-box input[type="text"], .form-box input[type="password"],
	.form-box button[type="submit"] {
	display: block;
	border: 0;
	margin: 20px auto;
	padding: 19px 30px;
	border: 1px solid black;
	border-radius: 10px;
	font-size: 16px;
	font-weight: bold;
	outline: none;
	transition: 0.25s;
}
.form-box button[type="submit"] {
	font-size: 18px;
	background-color: #c4c4c4;
}
.form-box input[type="text"]:focus, .form-box input[type="password"]:focus
	{
	width: 250px;
	border-color: #0000;
}
</style>
</head>
<body>
	<main>
		<div class="container">
			<form action="Ingreso.jsp" method="post" class="form-box">
				<h1 class="form-title">Formulario de acceso</h1>
				<input type="text" name=txtUsuario placeholder='Username' required>
				<input type="password" name=txtContra placeholder='Password'
					required>
				<button type="submit">Ingresar</button>
			</form>
		</div>
	</main>
</body>
</html>