package com.jsp.hsm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hsm.Entity.Doctor;
import com.jsp.hsm.repository.DoctorDao;
@WebServlet(value = "/displayDoctor")
public class DisplayDoctors extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Doctor> allDoctors = DoctorDao.getAllDoctors();
		
	req.setAttribute("allDoctors", allDoctors);
	req.getRequestDispatcher("showDoctor.jsp").forward(req, resp);
		
	}
}
