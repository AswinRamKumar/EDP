package com.example.demo;

import jakarta.persistence.*;

@Entity
public class sign
{
	@Id
	private String username;
	@Column(name = "first_name")
	private String FirstName;
	@Column(name = "last_name")
	private String LastName;
	private String password;
	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public sign() {
		super();
		System.out.println("Object created");
	}
	
	@Override
	public String toString() {
		return "sign [username=" + username + ", password=" + password + ", FirstName=" + FirstName + ", LastName="
				+ LastName + "]";
	}	

}

