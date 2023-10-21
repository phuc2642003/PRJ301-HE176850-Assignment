/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Time;
/**
 *
 * @author phuc2
 */
public class Attendance implements IBaseModel{
    private Session session;
    private Student student;
    private boolean status;
    private String description;
    private Time time;

    public Attendance() {
    }

    public Attendance(Session session, Student student, boolean status, String description, Time time) {
        this.session = session;
        this.student = student;
        this.status = status;
        this.description = description;
        this.time = time;
    }
    
    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    
}
