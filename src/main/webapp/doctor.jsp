<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/doctorcss.css"></head>
<body>
	<form action="doctor" method="post">
	
		<label>Name</label> <input type="text" name="name"> <br> <br>
		<label>Specializatuon</label> <input type="text" name="specia"><br> <br>
		<label>phone</label> <input type="number" name="phone"><br> <br>
		<label>email</label> <input type="text" name="email"><br> <br>
		<label>Availability Status</label> <select name="Status">
                							<option value="AVAILABLE">Available</option>
                							<option value="BUSY">Busy</option>
               								 <option value="OFF_DUTY">Off Duty</option>
            								</select><br> <br>
            								
          <label>Password</label> <input type="password" name="password"><br> <br>
			<input type="submit" value="Save">
		
	</form>
</body>
</html>