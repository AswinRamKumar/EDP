package com.example.demo;

import jakarta.persistence.*;

@Entity
public class Enroll {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "username")
    private sign user;

    @Column(name = "Course_type")
    private String Course_type;
    
    @Column(name="status")
    private int status;
    
    

    public String getCourse() {
		return Course_type;
	}

	public void setCourse(String course_type) {
		Course_type = course_type;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public sign getUser() {
        return user;
    }

    public void setUser(sign user) {
        this.user = user;
    }

	@Override
	public String toString() {
		return "Enroll [id=" + id + ", user=" + user + ", Course_type=" + Course_type + ", status=" + status + "]";
	}
   
    
}
