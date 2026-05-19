package com.jsp.hsm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hsm.Entity.Petient;
import com.jsp.hsm.repository.PetientDao;
@WebServlet(value = "/showPatients")
public class DisplayPatient extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Petient> allPatient = PetientDao.getAllPatient();
		req.setAttribute("allPatient", allPatient);
		req.getRequestDispatcher("showPatient.jsp").forward(req, resp);
	}
}
