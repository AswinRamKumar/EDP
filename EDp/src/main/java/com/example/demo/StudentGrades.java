package com.example.demo;

import jakarta.persistence.*;

@Entity
public class StudentGrades {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id1;

    @Column(name = "username")
    private String username;

    @Column(name = "Course_type")
    private String courseType;

    @Column(name = "total_marks")
    private int totalmarks;


    @Column(name = "grade")
    private String grade;

	public Long getId1() {
		return id1;
	}

	public void setId1(Long id1) {
		this.id1 = id1;
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

	public int getTotalmarks() {
		return totalmarks;
	}

	public void setTotalmarks(int totalmarks) {
		this.totalmarks = totalmarks;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "StudentGrades [id1=" + id1 + ", username=" + username + ", courseType=" + courseType + ", totalmarks="
				+ totalmarks + ", grade=" + grade + "]";
	}
	
	


    
}
