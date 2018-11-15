<%-- 
    Document   : navbar
    Created on : Nov 15, 2018, 3:43:07 PM
    Author     : Lahiru Kaushalya
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
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
                        <span class="glyphicon glyphicon-log-out"></span> Logout</a>
                </li>
            </ul>
        </div>
    </nav>
</html>
