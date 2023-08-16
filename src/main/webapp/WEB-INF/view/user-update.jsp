<%--
  Created by IntelliJ IDEA.
  User: 1488
  Date: 16.08.2023
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Info</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            padding: 20px;
            color: #333;
        }
        .form-container {
            width: 50%;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        label, .form-field {
            display: block;
            margin-bottom: 15px;
        }
        .form-field input[type="text"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .submit-button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2>User Info</h2>
<br>
<div class="form-container">
    <form:form action="saveUpdatedUser" modelAttribute="updatedUser">
        <form:hidden path="id"/>
        <label for="name">Name</label>
        <div class="form-field">
            <form:input path="name"/>
        </div>
        <label for="surname">Surname</label>
        <div class="form-field">
            <form:input path="surname"/>
        </div>
        <label for="department">Department</label>
        <div class="form-field">
            <form:input path="department"/>
        </div>
        <label for="salary">Salary</label>
        <div class="form-field">
            <form:input path="salary"/>
        </div>
        <input type="submit" class="submit-button" value="OK">
    </form:form>
</div>

</body>
</html>

