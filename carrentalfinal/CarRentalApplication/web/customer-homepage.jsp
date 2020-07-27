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
       
         <script type="text/javascript">                            
             function preventBack()
             { 
                 
                 window.history.forward();
                 
             }
             setTimeout("preventBack()",0);
             window.onunload=function(){};
        </script>   
          <style>
        #main{
    margin-left: 320px;
    width: 50%;
    height: 50%;
    background-color: rgb(255, 255, 255);
    box-shadow: 20px 20px 66px #888888;
    
        }
        </style>

        <title>Home Page</title>
    </head>
    <body>
        <div class="container-fluid header-section">
            <div class="row">
                <br><center>
                <div class="btn btn-success">
                    <h1 class="title">Welcome to the Car Rental System</h1>
                </div>
                    </center>
                <br><br><br><br>
            </div>            
        </div>
        
        <div class="container-fluid link-section" id="main">
             
            <div class="row">
                <div class="col-md-12 left-align">
                    <center>                        
                    <table>
                        <tr><td><br><a href="RentCar" class="btn btn-primary">Rent A Car</a><br></td> </tr>
                        <tr><td><br><a href="Booking.jsp" class="btn btn-primary">My Booking</a><br></td></tr>
                        <tr><td><br><a href="CustomerLogout" class="btn btn-danger">Logout</a><br></td></tr>                                            
                    </table>
                       </center>
                    <br>
                </div>
            </div>
        </div>
                
         <div class="container-fluid footer-section">
            <div class="row">
                <div class="col-md-12 left-align">
                    <center>	<h6><strong>Copyright &copy; 2018 Abhishek Chavan</strong></h6></center>
                </div>
            </div>
        </div>       
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>
