<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hospital Management System - Home</title>
     <link rel="stylesheet" href="CSS/homecss.css">
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <h1>Hospital Management System</h1>
    <div>
        <span style="font-size:14px">Welcome, Admin</span>
        <a href="LogoutServlet">Logout</a>
    </div>
</div>

<div class="container">

    <!-- Sidebar -->
    <div class="sidebar">
        <a href="home.jsp" class="active">Dashboard</a>
        <a href="patient.jsp"> Add Patients</a>
        <a href="doctor.jsp">Add Doctors</a>
        <a href="appointments.jsp">Create Appointments</a>
        <a href="displayDoctor">Show Doctor</a>
        <a href="showPatients">Show Patients</a>
        <a href="reports.jsp">Reports</a>
        <a href="settings.jsp">Settings</a>
    </div>

    <!-- Main -->
    <div class="main">

        <!-- Stat Cards -->
        <div class="cards">
            <div class="card">
                <h2>${totalPatients != null ? totalPatients : 0}</h2>
                <p>Total Patients</p>
            </div>
            <div class="card" style="border-color:#e67e22">
                <h2>${todayAppointments != null ? todayAppointments : 0}</h2>
                <p>Today's Appointments</p>
            </div>
            <div class="card" style="border-color:#9b59b6">
                <h2>${availableDoctors != null ? availableDoctors : 0}</h2>
                <p>Available Doctors</p>
            </div>
            <div class="card" style="border-color:#2ecc71">
                <h2>${completedToday != null ? completedToday : 0}</h2>
                <p>Completed Today</p>
            </div>
        </div>

        <!-- Recent Appointments Table -->
        <div class="section">
            <h3>Recent Appointments</h3>
            <table>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Patient Name</th>
                        <th>Doctor</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <%--
                    Replace placeholder rows below with JSTL once your servlet
                    sets the "recentAppointments" request attribute:

                    <c:forEach var="a" items="${recentAppointments}" varStatus="s">
                    <tr>
                        <td>${s.count}</td>
                        <td>${a.patient.name}</td>
                        <td>Dr. ${a.doctor.name}</td>
                        <td>${a.appointmentDate}</td>
                        <td>${a.timeSlot}</td>
                        <td><span class="badge ${fn:toLowerCase(a.status)}">${a.status}</span></td>
                    </tr>
                    </c:forEach>
                    --%>
                    <tr>
                        <td>1</td><td>Rahul Sharma</td><td>Dr. Mehta</td>
                        <td>2024-01-15</td><td>09:30 AM</td>
                        <td><span class="badge scheduled">Scheduled</span></td>
                    </tr>
                    <tr>
                        <td>2</td><td>Priya Nair</td><td>Dr. Verma</td>
                        <td>2024-01-15</td><td>10:00 AM</td>
                        <td><span class="badge pending">Pending</span></td>
                    </tr>
                    <tr>
                        <td>3</td><td>Amit Patel</td><td>Dr. Singh</td>
                        <td>2024-01-15</td><td>11:15 AM</td>
                        <td><span class="badge cancelled">Cancelled</span></td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</div>

</body>
</html>
