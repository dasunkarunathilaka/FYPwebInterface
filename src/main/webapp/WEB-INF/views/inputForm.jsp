<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../templates/header.jsp"></jsp:include>
    <body>
        <jsp:include page="../templates/navbar.jsp"></jsp:include>

        <div class="container jumbotron" 
             style="width:50%; margin-top:4%; padding-left: 3%; padding-right: 3%; margin-left:25%; border-radius:10px; opacity: 0.9;">
            
            <div class="page-header" style="margin-top: 1%; margin-left: 10%; margin-right: 10%">
                <h1 class="text-center" style="font-size: 150%; color: midnightblue">USER INPUT FORM</h1>
            </div>

            <%--<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4kJsyBmt7Vn4UJnmgldPaWOibZTm8ptw1E_JasDPHhMVDahWoYw" alt="sample_image" style="width:100%;">--%>
            <form:form action="postInput" method="post">
                <div class="col-xs-4 form-margin">
                    <h5>Number of Records</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <select class="form-control" id="exampleFormControlSelect2" name="userInput">
                        <option>10 000</option>
                        <option>50 000</option>
                        <option>100 000</option>
                        <option>500 000</option>
                        <option>1 000 000</option>
                    </select>
                </div>

                <div class="col-xs-4 form-margin">
                    <h5>Start Date</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <!-- Date input -->
                    <input id="startDate" name="date" placeholder="Start date" type="date" 
                           style="width: 100%; height: 30px"/>
                </div>

                <div class="col-xs-4 form-margin">
                    <h5>End Date</h5>
                </div>
                <div class="form-group col-xs-8 form-margin">
                    <!-- Date input -->
                    <input id="endDate" name="date" placeholder="End date" type="date" 
                           style="width: 100%; height: 30px"/>
                </div>

                <div style="text-align: center">
                    <input class="btn btn-primary" type="submit" value="Retrieve Dataset"
                           style="width: 50%; height: 40px; padding: 0.5%; margin-top: 4%; margin-bottom: 2%; margin-left: 25%; margin-right: 25%">
                </div>
            </form:form>
        </div>
    </body>
</html>