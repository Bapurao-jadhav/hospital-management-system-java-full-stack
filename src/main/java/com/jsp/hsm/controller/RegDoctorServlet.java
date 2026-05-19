package com.jsp.hsm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hsm.Entity.Doctor;
import com.jsp.hsm.repository.DoctorDao;

@WebServlet(value = "/doctor")
public class RegDoctorServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String specia = req.getParameter("specia");
		long phone = Long.parseLong(req.getParameter("phone"));
		String email = req.getParameter("email");
		String Status = req.getParameter("Status");
		
		Doctor doctor = new Doctor(name, specia, phone, email, Status);
		 DoctorDao.saveDoctor(doctor);
		 resp.sendRedirect("home.jsp");
	
		 
	
	}
}
