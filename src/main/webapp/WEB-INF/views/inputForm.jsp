<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Form</title>
</head>
<body>
<h1>User Input Form</h1>
<hr/>

<form:form action="postInput" method="post">
    <table>
        <tr>
            <td>Input</td>
            <td><input type='text' name='userInput' /></td>
            <%--<td><form:input path="userInput"/></td>--%>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="OK" class="btn"></td>
            <%--<td><form:button>Submit</form:button></td>--%>
        </tr>
    </table>
</form:form>

</body>
</html>