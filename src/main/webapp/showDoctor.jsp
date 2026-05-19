<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
    <%@ page import="java.util.*, com.jsp.hsm.Entity.Doctor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="StyleSheet" href="CSS/showDoctorCss.css">
</head>
<body>
	<div id="heading">
	<h2>Doctors List</h2>
	</div>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Sprcialization</th>
				<th>phone</th>
				<th>email</th>
				<th>status</th>
			</tr>
		</thead>
		<tbody>
		<%
			List<Doctor> list = (List<Doctor>)request.getAttribute("allDoctors");
			request.setAttribute("data", list);
		%>
			<c:forEach var="i" items="${data }">
			<tr>
				<td> ${i.getId()} </td>
				<td> ${i.getName()} </td>
				<td> ${i.getSprcialization()} </td>
				<td> ${i.getPhone()} </td>
				<td> ${i.getEmail()} </td>
				<td> ${i.getStatus()} </td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>