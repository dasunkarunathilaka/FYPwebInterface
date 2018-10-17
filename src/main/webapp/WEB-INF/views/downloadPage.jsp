<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dasun K
  Date: 10/8/2018
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Download Example</title>
</head>
<body>
<div class="form-container">
    <h1>Welcome to FileDownloader Example</h1>

    Click on below links to see FileDownload in action.<br/><br/>


    <a href="<c:url value='/download/internal' />">Download This File (located inside project)</a>
    <br/>
    <a href="<c:url value='/download/external' />">Download This File (located outside project, on file system)</a>

</div>
</body>
</html>
