package com.example.demo;

import jakarta.persistence.*;

@Entity
public class Course {

    @Id
    @Column(name = "Course_id")
    private int courseId;

    @Column(name = "Course_type")
    private String courseType;

    @Column(name = "Duration")
    private int duration;

    @ManyToOne
    @JoinColumn(name = "mentor_id")
    private Mentor mentor;

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public Mentor getMentor() {
        return mentor;
    }

    public void setMentor(Mentor mentor) {
        this.mentor = mentor;
    }
}
