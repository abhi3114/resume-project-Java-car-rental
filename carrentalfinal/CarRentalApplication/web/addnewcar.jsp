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
             #main{
    margin-left: 320px;
    width: 50%;
    height: 50%;
    background-color: rgb(255, 255, 255);
    box-shadow: 20px 20px 66px #888888;
    
        }
         </style>
       
         <title>Add New Car</title>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/background/3.jpg');background-size:cover; background-repeat: no-repeat;">
        <div class="container-fluid header-section">
            <div class="row">
                <br>
                <center>
                <div class="btn btn-primary">
                    <h1 class="title">Car Rental Since 1994</h1>
                </div>
                    </center>
            </div>
        </div>
        <br>
        <div class="container-fluid form-section" id="main">
            <br>
            <form  class="form-horizontal" name="addNewCarForm" action="AddNewCar" method="post">
                
                <div class="form-group">
                    <label for="inputCarMake" class="col-md-5 control-label">Car Make:</label>
                    <div class="col-md-3">
                        <input type="text" name="carMake" class="form-control" required> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputCarModel" class="col-md-5 control-label">Car Model:</label>
                    <div class="col-md-3">
                        <input type="text" name="carModel" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputCarYear" class="col-md-5 control-label">Car Year:</label>
                    <div class="col-md-3">
                        <input type="text" name="carYear" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputCarTrans" class="col-md-5 control-label">Car Transmission Type:</label>
                    <div class="col-md-3">
                        <label class="radio-inline">
                            <input type="radio" name="transmissionType" value="Auto" required>Auto
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="transmissionType" value="Manual" required>Manual
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputRateMile" class="col-md-5 control-label">Rate Per KM: </label>
                    <div class="col-md-3">
                        <input type="text" name="rateMile" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputRateDay" class="col-md-5 control-label">Rate Per Day: </label>
                    <div class="col-md-3">
                        <input type="text" name="rateDay" class="form-control" required>
                    </div>
                </div>
        
                <div class="container-fluid button-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                          <button type="submit" class="btn btn-success" name="add" value="Add">Add</button>
                        </div>
                        <a href="HomePage" class="hover-link">Back to Home</a>
                    </div>
                </div>
                <br>
            </form>
        </div>

       
        
        <div class="container-fluid footer-section">
            <div class="row">
                <div class="col-md-12 left-align">
                    <center>  	<h6><strong>Copyright &copy; 2018 Abhishek Chavan</strong></h6></center>
                </div>
            </div>
        </div>
        
        
          
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>