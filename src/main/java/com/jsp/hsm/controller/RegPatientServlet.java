package com.jsp.hsm.controller;

import java.io.IOException;
import com.jsp.hsm.Entity.Petient;
import com.jsp.hsm.repository.PetientDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(value = "/patient")
public class RegPatientServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String gender = req.getParameter("gender");
		long phone = Long.parseLong(req.getParameter("phone"));
		String email = req.getParameter("email");
		String bloodGroup = req.getParameter("bloodGroup");
		String address = req.getParameter("address");
		
		Petient petient = new Petient(name, age, gender, phone,email,bloodGroup,address);
		
		PetientDao.savePetient(petient);
		resp.sendRedirect("home.jsp");
		
	}
}
