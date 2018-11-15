<%-- 
    Document   : signupPage
    Created on : Nov 15, 2018, 5:27:21 PM
    Author     : Lahiru Kaushalya
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../templates/header.jsp"></jsp:include>
    <body>
        <div class="container jumbotron" 
             style="width:50%; height: 100%;margin-top:2%;margin-bottom:2%; border-radius:5px; padding-left: 3%; padding-right: 3%">
            
            <div class="page-header" style="margin-top: 0px;padding-top: 0.1%;">
                <h1 class="text-center" style="font-size: 150%; color: midnightblue; margin-top: 0px">SIGNUP</h1>
            </div>
            
            
            <form:form action="postInput" method="post">
                
                <div class="col-xs-4 form-margin">
                    <h5>Name</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <!-- Date input -->
                    <input id="name" name="name" placeholder="Name" type="text" 
                           style="width: 100%"/>
                </div>
                
                <div class="col-xs-4 form-margin">
                    <h5>Username</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <!-- Date input -->
                    <input id="username" name="username" placeholder="Username" type="text" 
                           style="width: 100%"/>
                </div>
                
                <div class="col-xs-4 form-margin">
                    <h5>Password</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <!-- Date input -->
                    <input id="password" name="password" placeholder="Password" type="password" 
                           style="width: 100%"/>
                </div>
                
                <div class="col-xs-4 form-margin">
                    <h5>Password Confirmation</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <!-- Date input -->
                    <input id="passwordCon" name="passwordCon" placeholder="Confirm Password" type="password" 
                           style="width: 100%"/>
                </div>
                
                <div class="col-xs-4 form-margin">
                    <h5>Role</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <select class="form-control" id="exampleFormControlSelect2" name="userInput">
                        <option>Researcher</option>
                        <option>Student</option>
                        <option>Other</option>
                    </select>
                </div>
                  
                <div style="text-align: center">
                    <input class="btn btn-primary" type="submit" value="SIGNUP"
                           style="width: 50%; height: 40px; padding: 0.5%; margin-top: 4%; margin-bottom: 1%; margin-left: 25%; margin-right: 25%">
                </div>
                
                <div style="text-align: center">
                    <input class="btn btn-primary" type="submit" value="BACK"
                           style="width: 50%; height: 40px; padding: 0.5%; margin-top: 1%; margin-bottom: 2%; margin-left: 25%; margin-right: 25%">
                </div>
                
            </form:form>
        </div>
    </body>
</html>
