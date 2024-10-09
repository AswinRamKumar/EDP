package com.example.demo;

import java.io.Serializable;

import jakarta.persistence.*;

@Entity
public class Marks 
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "username")
    private String username;
    
    @Column(name = "Course_type")
    private String courseType;

    @Column(name = "test_id")
    private int testId;

    @Column(name = "secured_marks")
    private int securedMarks;
    
    @Column(name="attempts")
    private int attempts;

   
      public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getAttempts() {
		return attempts;
	}

	public void setAttempts(int attempts) {
		this.attempts = attempts;
	}

	public int getSecuredMarks() {
        return securedMarks;
    }

    public void setSecuredMarks(int securedMarks) {
        this.securedMarks = securedMarks;
    }

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCourseType() {
		return courseType;
	}

	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}

	public int getTestId() {
		return testId;
	}

	public void setTestId(int testId) {
		this.testId = testId;
	}

	@Override
	public String toString() {
		return "Marks [id=" + id + ", username=" + username + ", courseType=" + courseType + ", testId=" + testId
				+ ", securedMarks=" + securedMarks + ", attempts=" + attempts + "]";
	}
	
	
}

