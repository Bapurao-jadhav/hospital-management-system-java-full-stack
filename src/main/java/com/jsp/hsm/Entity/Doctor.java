package com.jsp.hsm.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Doctor {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String Sprcialization;
	private long phone;
	private String email;
	private String status;
	
	public Doctor() {

	}

	public Doctor(String name, String Sprcialization, long phone, String email, String status) {
		this.name = name;
		this.Sprcialization=Sprcialization;
		this.phone = phone;
		this.email = email;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSprcialization() {
		return Sprcialization;
	}

	public void setSprcialization(String sprcialization) {
		Sprcialization = sprcialization;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Doctor [id=" + id + ", name=" + name + ", Sprcialization=" + Sprcialization + ", phone=" + phone
				+ ", email=" + email + ", status=" + status + "]";
	}

	
	
	
	
}
