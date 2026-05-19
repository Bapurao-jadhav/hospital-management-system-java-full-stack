package com.jsp.hsm.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.jsp.hsm.Entity.Petient;
import com.jsp.hsm.util.PetientUtil;

public class PetientDao {
	public static EntityManager em = PetientUtil.getPatientEM();
	
	public static void savePetient(Petient p) {
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(p);
		et.commit();
	}
	
	public static List<Petient> getAllPatient() {
		Query query = em.createQuery("FROM Petient");
		List list = query.getResultList();
		return list;
	}
}
