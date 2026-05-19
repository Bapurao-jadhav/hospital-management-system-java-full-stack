package com.jsp.hsm.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.jsp.hsm.Entity.Doctor;
import com.jsp.hsm.util.DoctorUtil;

public class DoctorDao {
	public static EntityManager em= DoctorUtil.getDoctorEM();
	
	public static void saveDoctor(Doctor d) {
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(d);
		et.commit();
	}
	
	public static List<Doctor> getAllDoctors() {
		Query query = em.createQuery("FROM Doctor");
		List<Doctor> list = query.getResultList();
		return list;
	}
}
