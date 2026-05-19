<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
<link rel="stylesheet" href="CSS/doctorcss.css">
</head>
<body>

<form action="patient" method="post">

    <h2>Add Patient</h2>

    <label>Name</label>
    <input type="text" name="name"> <br><br>

    <label>Age</label>
    <input type="number" name="age"> <br><br>

    <label>Gender</label>
    <select name="gender">
        <option value="">-- Select --</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
    </select> <br><br>

    <label>Phone</label>
    <input type="number" name="phone"> <br><br>

    <label>Email</label>
    <input type="text" name="email"> <br><br>

    <label>Blood Group</label>
    <select name="bloodGroup">
        <option value="">-- Select --</option>
        <option value="A+">A+</option>
        <option value="A-">A-</option>
        <option value="B+">B+</option>
        <option value="B-">B-</option>
        <option value="AB+">AB+</option>
        <option value="AB-">AB-</option>
        <option value="O+">O+</option>
        <option value="O-">O-</option>
    </select> <br><br>

    <label>Address</label>
    <textarea name="address" rows="3"></textarea> <br><br>

    <!-- createdAt is set automatically in the model, not shown to user -->

    <input type="submit" value="Save Patient">

</form>

</body>
</html>
