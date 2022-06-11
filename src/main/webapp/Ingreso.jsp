<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ingreso</title>

</head>
<body>
<%
 String txtUsuario="carlitos";
 String txtContra="motomami";
 
 String usuario = request.getParameter("txtUsuario");
 String contrasena = request.getParameter("txtContra");
 
 if(usuario.equals(txtUsuario) && contrasena.equals(txtContra)){
	response.sendRedirect("user-Expe.jsp");
	}else{
	response.sendRedirect("login.jsp");
	}
%>
</body>
</html>