 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<%@page import="com.infosyst.dao.UserDao,com.infosyst.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="u" class="com.infosyst.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="com.infosyst.dao.UserDao,com.infosyst.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<h1>Lista de Usuarios</h1>
<% List<User> list=UserDao.getAllRecords();
request.setAttribute("list", list); %>
			
<table border="1" width="90%">
    <tr>
        <th>Id</th>
        <th>Nombre</th>
        <th>Apellido Paterno</th>
        <th>Apellido Materno</th>
        <th>E-mail</th>
        <th>Edad</th>
        <th>Ingresos Mensuales</th>
        <th>Fecha Ingreso</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getId()}</td>
            <td>${u.getNombre()}</td>
            <td>${u.getApellido_paterno()}</td>
            <td>${u.getApellido_materno()}</td>
            <td>${u.getEmail()}</td>
            <td>${u.getEdad()}</td>
            <td>${u.getIngresos_mensuales()}</td>
            <td>${u.getFecha_ingreso()}</td>
        </tr>
    </c:forEach>
</table>
			

</body>




</html>