package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="creator_table")
public class Creator {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="creator_id")
    private int id;  // Auto-incremented integer ID

    @Column(name="creator_username", length = 50)
    private String username;

    @Column(name="creator_password", length = 50)
    private String password;

    @Column(name="creator_email", length = 100)
    private String email;

    @Column(name="creator_gender", length = 10)
    private String gender;

    @Column(name="creator_dateofbirth")
    private String dateOfBirth;

    @Column(name="creator_location", length = 100)
    private String location;

    @Column(name="creator_contact", length = 100)
    private String contact;

    @Column(name="creator_socialmediaurl", length = 255)
    private String socialMediaUrl;  // Social media URL for the creator
    
    
    @Column(name = "verified", nullable = false)
    private boolean verified;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

   

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getSocialMediaUrl() {
        return socialMediaUrl;
    }

    public void setSocialMediaUrl(String socialMediaUrl) {
        this.socialMediaUrl = socialMediaUrl;
    }
    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }
}