<%-- 
    Document   : homePage
    Created on : Nov 15, 2018, 3:56:28 PM
    Author     : Lahiru Kaushalya
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../templates/header.jsp"></jsp:include>
    <body>
        <div class="container jumbotron" 
             style="width:50%; height: 100%;margin-top:2%;margin-bottom:2%; border-radius:5px;">
            <div class="page-header" style="margin-top: 0px;padding-top: 0.1%;">
                <h1 class="text-center" style="font-size: 300%; color: midnightblue; margin-top: 0px">Data Integration Framework</h1>
            </div>
            
            <div style="margin-top: 2%; margin-bottom: 4%">
                <img style="width: 50%; height: 50%; padding: 0.5% ;margin-left: 25%; margin-right: 25%" 
                     src="${pageContext.servletContext.contextPath}../images/sample.png"/>
            </div>
            
            <div>
                <button class="btn btn-primary"
                        style="width: 50%; height: 40px; padding: 0.5%; margin-top: 2%; margin-bottom: 2%; margin-left: 25%; margin-right: 25%">SIGNUP</button>
                <button class="btn btn-primary"
                        title="LOGIN" 
                        style="width: 50%; height: 40px; padding: 0.5%; margin-top: 2%; margin-bottom: 2%; margin-left: 25%; margin-right: 25%">LOGIN</button>
            </div>
        </div>
    </body>
</html>
