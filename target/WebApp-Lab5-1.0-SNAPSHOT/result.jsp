<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.example.RegisterForm"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="form-container">
                    <h2 class="text-center mb-4">Registration Result</h2>
                    <% RegisterForm form = (RegisterForm) request.getAttribute("form"); %>
                    <div class="mb-3">
                        <strong>Full Name:</strong> <%= form.getFullName() %>
                    </div>
                    <div class="mb-3">
                        <strong>ID:</strong> <%= form.getId() %>
                    </div>
                    <div class="mb-3">
                        <strong>Email:</strong> <%= form.getEmail() %>
                    </div>
                    <div class="mb-3">
                        <strong>Gender:</strong> <%= form.getGender() %>
                    </div>
                    <div class="mb-3">
                        <strong>Field of Study:</strong> <%= form.getFieldOfStudy() %>
                    </div>
                    <div class="mb-3">
                        <strong>Subjects:</strong>
                        <ul class="list-unstyled">
                            <% 
                            List<String> subjects = form.getSubjects();
                            if (subjects != null && !subjects.isEmpty()) {
                                for (String subject : subjects) { 
                            %>
                                <li><%= subject %></li>
                            <% 
                                }
                            } else {
                            %>
                                <li>No subjects selected</li>
                            <% } %>
                        </ul>
                    </div>
                    <div class="mb-3">
                        <strong>Comments:</strong> <%= form.getComments() %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>