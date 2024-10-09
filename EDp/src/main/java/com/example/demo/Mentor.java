package com.example.demo;

import jakarta.persistence.*;

@Entity
public class Mentor {

    @Id
    @Column(name = "Mentor_id")
    private int mentorId;

    @Column(name = "mentor_email_id")
    private String mentorEmailId;

    @Column(name = "mentor_name")
    private String mentorName;


    public int getMentorId() {
        return mentorId;
    }

    public void setMentorId(int mentorId) {
        this.mentorId = mentorId;
    }

    public String getMentorEmailId() {
        return mentorEmailId;
    }

    public void setMentorEmailId(String mentorEmailId) {
        this.mentorEmailId = mentorEmailId;
    }

    public String getMentorName() {
        return mentorName;
    }

    public void setMentorName(String mentorName) {
        this.mentorName = mentorName;
    }
}
