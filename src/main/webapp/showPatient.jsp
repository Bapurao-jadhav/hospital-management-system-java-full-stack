<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
    <%@ page import="java.util.*, com.jsp.hsm.Entity.Petient" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="StyleSheet" href="CSS/showDoctorCss.css">
</head>
<body>
	<div id="heading">
	<h2>Patients List</h2>
	</div>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>phone</th>
				<th>email</th>
				<th>Blood Group</th>
				<th>Address</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
		<%
			List<Petient> list = (List<Petient>)request.getAttribute("allPatient");
			request.setAttribute("data", list);
		%>
			<c:forEach var="i" items="${data }">
			<tr>
				<td> ${i.getId()} </td>
				<td> ${i.getName()} </td>
				<td> ${i.getAge()} </td>
				<td> ${i.getGender()} </td>
				<td> ${i.getPhone()} </td>
				<td> ${i.getEmail()} </td>
				<td> ${i.getBloodGroup()} </td>
				<td> ${i.getAddress()} </td>
				<td> ${i.getCreatedAt()} </td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>