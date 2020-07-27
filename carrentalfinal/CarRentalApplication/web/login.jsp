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
        
       
        <title>Login</title>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/background/3.jpg');background-size:cover; background-repeat: no-repeat;">
         <center><br><br><br><br><br>       
        <table width="30%"  >   
            <tr>
                 
                <th class="btn btn-primary" style="width:100%;">          
                <div class="form-group"  >
                    <h1>ADMIN LOGIN</h1>                                         
                </div>             
                    </th>
                     
            </tr>
           <tr>
                <td>            
        <form class="loginForm" name="loginForm" action="Login" method="post"><br>                
             <div>
                <div class="form-group">
                    <label>Email:</label>                     
                    <input type="text" placeholder="Enter Email address here" maxlength="30" class="form-control" name="username" required>
                </div>  
                <div class="  form-group">
                    <label>Password:</label>
                    <input type="password" placeholder="Enter password here" maxlength="10" class="form-control" name="password" required>
                </div> <br>
                <button type="submit" name="login" value="Login" class="btn btn-success" >Login</button>
               &nbsp;&nbsp;    
               Click <a href="register.jsp"><span class="link"><strong>register</strong></span></a> to open an admin account
               <center> <h6><strong>Copyright &copy; 2018 Abhishek Chavan</strong></h6></center>
             </div>
        </form>
        </td>
            </tr>
            </table>
         </center><br>
             
        
         
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>


