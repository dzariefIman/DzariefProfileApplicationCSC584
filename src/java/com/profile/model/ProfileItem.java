package com.profile.model;

public class ProfileItem implements java.io.Serializable{
    
    private String name; 
    private String studentID; 
    private String program;
    private String email;
    private String hobbies;
    private String selfIntroduction;

    public ProfileItem(){
        name = "";
        studentID = "";
        program = "";
        email = "";
        hobbies = "";
        selfIntroduction = "";        
    }
    
    public ProfileItem(String name, String studentID, String program, String email, String hobbies, String selfIntroduction){
        this.name = name;
        this.studentID = studentID;
        this.program = program;
        this.email = email;
        this.hobbies = hobbies;
        this.selfIntroduction = selfIntroduction;
    }
    
    public String getName(){
        return name;
    }
    
    public String getStudentID(){
        return studentID;
    }
    
    public String getProgram(){
        return program;
    }
    
    public String getEmail(){
        return email;
    }
    
    public String getHobbies(){
        return hobbies;
    }
    
    public String getSelfIntroduction(){
        return selfIntroduction;
    }
 
}