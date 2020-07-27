<%@page import="model.Vehicles"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

         <!-- css link -->
         
          <style>
           #t1{
               background-color:#ff0066;
               color:white;
            }    
             #th{
                background-color: white;
            }
        </style>
        <title>Rent a Car</title>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/background/3.jpg');background-size:cover; background-repeat: no-repeat;">
         <div class="container-fluid header-section">
            <div class="row">
            <center>
                <br>
                <div class="btn btn-primary">
                      <h4 class="title">Choose the desired vehicle</h4>
                    
                </div>                
                </center>
            </div>
        </div>
        
       

        <div class="container-fluid table-section">
            <br>
            <div class="row">
                <div class="col-md-12 text-center">
                    <table class="table table-bordered">
                        <tr id="t1">
                            <td>Car Make</td>
                            <td>Car Model</td>
                            <td>Car Year</td>
                            <td>Transmission Type</td>
                            <td>Rate Per Km</td>
                            <td>Rate Per Day</td>
                            <td></td>
                        </tr>

                        <c:forEach var="Vehicles" items="${vehiclesList}">
                        <tr id="th">
                            <td><c:out value="${Vehicles.make}"/></td>
                            <td><c:out value="${Vehicles.model}"/></td>
                            <td><c:out value="${Vehicles.year}"/></td>
                            <td><c:out value="${Vehicles.transimssion}"/></td>
                            <td>Rs <c:out value="${Vehicles.ratePerMile}"/></td>
                            <td>Rs <c:out value="${Vehicles.ratePerDay}"/></td>
                            <td> <a href="SelectVehicle?id=${Vehicles.id}"> Select </a></td>
                        </tr>
                        </c:forEach>     
                    </table>
                </div> 
            </div>
        </div>
        
        <div class="container-fluid home-section">
            <div class="row">
                <div class="col-md-12">
                    <a href="CustomerHomePage" class="hover">Back to Home</a>
                </div>
            </div>
        </div>
        
        <div class="container-fluid footer-section">
            <div class="row">
                <div class="col-md-12 left-align">
                    	<h6><strong>Copyright &copy; 2018 Abhishek Chavan</strong></h6>
                </div>
            </div>
        </div>
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>
