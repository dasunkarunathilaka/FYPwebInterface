<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
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
<%--<div class="container">--%>
<%--<div id="myCarousel" class="carousel slide" data-ride="carousel">--%>
<%--<!-- Indicators -->--%>
<%--<ol class="carousel-indicators">--%>
<%--<li data-target="#myCarousel" data-slide-to="0" class="active"></li>--%>
<%--<li data-target="#myCarousel" data-slide-to="1"></li>--%>
<%--<li data-target="#myCarousel" data-slide-to="2"></li>--%>
<%--</ol>--%>

<%--<!-- Wrapper for slides -->--%>
<%--<div class="carousel-inner">--%>

<%--<div class="item active">--%>
<%--<img src="/images/sample.png" alt="sample_image" style="width:100%;">--%>
<%--<div class="carousel-caption">--%>
<%--<h3>sample_image</h3>--%>
<%--<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>--%>
<%--</div>--%>
<%--</div>--%>

<%--<div class="item">--%>
<%--<img src="/resources/images/sample.png" alt="sample_image" style="width:100%;">--%>
<%--<div class="carousel-caption">--%>
<%--<h3>sample_image</h3>--%>
<%--<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>--%>
<%--</div>--%>
<%--</div>--%>

<%--<div class="item">--%>
<%--<img src="/resources/images/sample.png" alt="sample_image" style="width:100%;">--%>
<%--<div class="carousel-caption">--%>
<%--<h3>sample_image</h3>--%>
<%--<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>--%>
<%--</div>--%>
<%--</div>--%>

<%--</div>--%>

<%--<!-- Left and right controls -->--%>
<%--<a class="left carousel-control" href="#myCarousel" data-slide="prev">--%>
<%--<span class="glyphicon glyphicon-chevron-left"></span>--%>
<%--<span class="sr-only">Previous</span>--%>
<%--</a>--%>
<%--<a class="right carousel-control" href="#myCarousel" data-slide="next">--%>
<%--<span class="glyphicon glyphicon-chevron-right"></span>--%>
<%--<span class="sr-only">Next</span>--%>
<%--</a>--%>
<%--</div>--%>
<%--</div>--%>


<div class="container jumbotron" style="width:50%;margin-top:4%;margin-left: 25%; border-radius:10px; opacity: 0.9 ;">
    <div class="page-header" style="margin-top: 1%; margin-left: 10%; margin-right: 10%">
        <h1 class="text-center" style="font-size: 300%; color: midnightblue">USER INPUT FORM</h1>
    </div>

    <%--<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4kJsyBmt7Vn4UJnmgldPaWOibZTm8ptw1E_JasDPHhMVDahWoYw" alt="sample_image" style="width:100%;">--%>
    <form:form action="postInput" method="post">
        <div class="col-xs-4 form-margin">
            <h5>Service Provider :</h5>
        </div>
        <div class="form-group col-xs-8 form-margin">
            <select class="form-control" id="exampleFormControlSelect1">
                <option>Provider 1</option>
                <option>Provider 2</option>
                <option>Provider 3</option>
            </select>
        </div>
        <div class="col-xs-4 form-margin">
            <h5>Number of Records :</h5>
        </div>
        <div class="form-group col-xs-8 form-margin">
            <select class="form-control" id="exampleFormControlSelect2">
                <option>10 000</option>
                <option>50 000</option>
                <option>100 000</option>
                <option>500 000</option>
                <option>1 000 000</option>
            </select>
        </div>
        <div>
            <input type="submit" value="OK" class="btn">
        </div>
        <%--<table>--%>
        <%--<tr>--%>
        <%--<td>Input</td>--%>
        <%--<td><input type='text' name='userInput'/></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td></td>--%>
        <%--<td><input type="submit" value="OK" class="btn"></td>--%>
        <%--</tr>--%>
        <%--</table>--%>
    </form:form>
</div>
</body>
</html>