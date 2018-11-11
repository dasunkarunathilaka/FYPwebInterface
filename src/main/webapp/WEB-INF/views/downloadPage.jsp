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
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Data Integration Framework</title>

    <link rel="stylesheet" type="text/css" href="/resources/static/main.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%--<body background="http://news.nus.edu.sg/sites/default/files/resources/highlights/2017/2017-03/govtech/govtech-1.jpg">--%>
<%--<body background="https://juntosglobal.com/wp-content/uploads/2017/03/Big-Data-1160x700.jpg"--%>
<%--style="background-size: cover" ;>--%>
<body background="http://news.nus.edu.sg/sites/default/files/resources/highlights/2017/2017-03/govtech/govtech-1.jpg"
      style="background-size: cover" ;>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header active">
            <a href="#">
                <div class="navbar-brand">
                    Data Integration Framework
                </div>
            </a>
        </div>
        <ul class="nav navbar-nav">
            <li>
                <a href="#">Repositories</a>
            </li>
            <li>
                <a href="#">About</a>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="#">
                    <span class="glyphicon glyphicon-user"></span> Sign Up</a>
            </li>
            <li>
                <a href="#">
                    <span class="glyphicon glyphicon-log-in"></span> Login</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container jumbotron" style="width:50%;margin-top:4%;margin-left: 25%; border-radius:10px; opacity: 0.9 ;">
    <div class="page-header" style="margin-top: 1%; margin-left: 10%; margin-right: 10%">
        <h1 class="text-center" style="font-size: 300%; color: midnightblue">DATA RETRIEVED</h1>
    </div>
    Click on following link to download CDR data set.<br/><br/>


    <a href="<c:url value='/download/internal' />">Download This File</a>
    <br/>
    <%--<a href="<c:url value='/download/external' />">Download This File (located outside project, on file system)</a>--%>


</div>
</body>
</html>
