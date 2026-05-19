package com.jsp.hsm.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PetientUtil {
	public static EntityManager getPatientEM() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jsp");
		EntityManager em = emf.createEntityManager();
		return em;
	}
}
