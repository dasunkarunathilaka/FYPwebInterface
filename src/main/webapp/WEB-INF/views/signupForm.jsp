<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
<div>
    <form:form action="userSignup" method="post">
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        Name: <input type="text" name="name"><br>
        Role:
        <select name="role">
            <option>Researcher</option>
            <option>Data Provider</option>
            <option>Student</option>
        </select>
        <br>

        <div style="text-align: center">
            <input type="submit" value="Sign Up" class="btn" style="background: lawngreen">
        </div>
    </form:form>
</div>
</body>
</html>
