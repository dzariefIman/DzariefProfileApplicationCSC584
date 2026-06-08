<%@ page import="com.profile.model.ProfileItem" %>
<%
    ProfileItem profile = (ProfileItem) request.getAttribute("profile");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Saved Profiles</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="bg"></div>
    <%
        if (profile == null) {
    %>
        <div class="container">
            <div class="no-profile">
                <h1>No Profile</h1>
                <p>No profile to display. Please submit the form first.</p>
            </div>
        </div>
    <%
        } else {
    %>
        <div class="container">
            <div class="profile-card">
                <div class="profile-header">
                    <div class="header-content">
                        <h1><%= profile.getName() %></h1>
                    </div>
                </div>
                
                <div class="profile-body">
                    <div class="profile-item">
                        <i class="fas fa-id-card icon"></i>
                        <div class="item-content">
                            <span class="label">Student ID</span>
                            <span class="value"><%= profile.getStudentID() %></span>
                        </div>
                    </div>
                    
                    <div class="profile-item">
                        <i class="fas fa-book icon"></i>
                        <div class="item-content">
                            <span class="label">Program</span>
                            <span class="value"><%= profile.getProgram() %></span>
                        </div>
                    </div>
                    
                    <div class="profile-item">
                        <i class="fas fa-envelope icon"></i>
                        <div class="item-content">
                            <span class="label">Email</span>
                            <span class="value"><%= profile.getEmail() %></span>
                        </div>
                    </div>
                    
                    <div class="profile-item">
                        <i class="fas fa-heart icon"></i>
                        <div class="item-content">
                            <span class="label">Hobbies</span>
                            <span class="value"><%= profile.getHobbies() %></span>
                        </div>
                    </div>
                    
                    <div class="profile-item">
                        <i class="fas fa-comment icon"></i>
                        <div class="item-content">
                            <span class="label">Self Introduction</span>
                            <span class="value"><pre style="white-space:pre-wrap;"><%= profile.getSelfIntroduction() %></pre></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <%
        }
    %>
</body>
</html>
