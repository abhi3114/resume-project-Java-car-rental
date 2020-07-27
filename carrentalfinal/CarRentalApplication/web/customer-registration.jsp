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
             label,strong
                {
                      color:white;
                }
         </style>
         
         <title>Register</title>
         <script>
             function rnamefml()
             {  
                 var fname=document.forms["registrationForm"]["firstName"].value;
                 var lname=document.forms["registrationForm"]["lastName"].value;
                   var pattern1 = /^[a-zA-Z]*$/;
                if (pattern1.test(fname) && pattern1.test(lname) )
                {  
                  return true;
               }
               else 
               { 
                   alert("ERROR IN TEXT FIELD: \n* In TextBox enter Alphabets only \n* i.e:(Firstname and Lastname)");                  
                     return false;
                }
             }
                         function remail()
            {
                var text=document.forms["registration"]["email"].value;
                
                var atpos=text.indexOf("@");
                var dotpos=text.lastIndexOf(".");
                
                if(atpos<1 || dotpos<atpos+2 || dotpos+2>text.length)
                {
                    alert("ERROR IN 'Email' FIELD: \n* Invalid Email.\n* Please Re-Enter your Email address.\n* Example: john12@gmail.com");
                     registration.email.focus(); 
                    return false;
                }
                else
                {
                    return true;
                }
            }           
            function rpass()
            {
                var pwd=document.forms["registrationForm"]["password"].value; 
                if(pwd.length > 6 && pwd.length < 15)
                {                  
                 return true;
                }
                else
                {
                    alert("ERROR IN 'Password' FIELD: \n* Please include atleast one uppercase,one lowwercase & one number \n* Also your password must have minimun 6 character or letter and maximum 8 character or letter");
                     registration.password.focus(); 
                    return false;
                }
            }
            function rcpass()
            {
                var pwd=document.forms["registrationForm"]["password"].value;
                var cpwd=document.forms["registrationForm"]["cpassword"].value;
                if(pwd===cpwd)
                {
                    return true;
                }
                else
                {
                    alert("ERROR IN 'Confirm Password' FIELD: \n* Please enter same character,number,etc. that you have enter in password textbox.");
                     registration.cpassword.focus(); 
                    return false;
                }
            }
         </script>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/background/4.jpg');background-size:cover; background-repeat: no-repeat;">
        <div class="container-fluid header-section">
            <br>
            <center>
            <div class="btn btn-primary">
                <div class="col-md-12 text-center">
                     <h1 >Customer Registration</h1>
                </div>                
                </center>
            
            </div>
       
       
        <div class="container-fluid form-section">
            <form class="form-horizontal" name="registrationForm" action="CustomerRegister" method="post" >
                <br>
                <div class="form-group">
                    <label for="inputFirstName" class="col-md-5 control-label">First Name:</label>
                    <div class="col-md-3">
                        <input type="text" name="firstName" class="form-control" onchange="rnamefml()" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputLastName" class="col-md-5 control-label">Last Name:</label>
                    <div class="col-md-3">
                        <input type="text" name="lastName" class="form-control" onchange="rnamefml()" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputUsername" class="col-md-5 control-label">Email:</label>
                    <div class="col-md-3">
                        <input type="email" name="username" class="form-control" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="inputPassword" class="col-md-5 control-label">Password:</label>
                    <div class="col-md-3">
                        <input type="password" name="password" class="form-control" onchange="rpass()" required>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="inputPassword" class="col-md-5 control-label">Confirm-Password:</label>
                    <div class="col-md-3">
                        <input type="password" name="cpassword" class="form-control" onchange="rcpass()" required>
                    </div>
                </div>
                
                <div class="container-fluid button-section">
                    <div class="row">
                        <div class="col-md-12 text-center">
                          <button type="submit" class="btn btn-success" name="Register" value="Register" onclick="return rnamefml() && rpass() && rcpass();">Register</button>
                        </div>
                    </div>
                </div>
                
            </form>
        </div>
        
       <div class="container-fluid footer-section">
            <div class="row">
                <div class="col-md-12 left-align">
                    <center><h6><strong>Copyright &copy; 2018 Abhishek Chavan</strong></h6></center>
                </div>
            </div>
        </div>
</html>
