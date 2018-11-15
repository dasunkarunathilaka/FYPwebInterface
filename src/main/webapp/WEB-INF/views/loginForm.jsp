<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div>
    <form:form action="userLogin" method="post">
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        <div style="text-align: center">
            <input type="submit" value="Sign Up" class="btn" style="background: lawngreen">
        </div>
    </form:form>
</div>

</body>
</html>
