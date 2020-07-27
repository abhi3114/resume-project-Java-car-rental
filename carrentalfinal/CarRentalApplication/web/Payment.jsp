<%-- 
    Document   : Payment
    Created on : Oct 14, 2018, 8:03:50 PM
    Author     : abhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #t1{
               background-color:#ff0066;;
               color:white;
            }           
            #th{
                background-color: white;
            }
        </style>
    </head>
     <body style="background-image: url('${pageContext.request.contextPath}/background/3.jpg');background-size:cover; background-repeat: no-repeat;">
        <form>
          <%@ page import="java.sql.*" %>
            <%                              
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/carrentalapplication","root","");

            Statement statement = c.createStatement();
             

            ResultSet rs = 
                statement.executeQuery("SELECT * FROM payment") ; 

           int i=1;
               %>
               <center>
                   <br>
               <div class="btn btn-primary">
               <div class="col-sm-12">
         <center><h2 >Entire Member Payment Record</h2></center>
               </div></center>
               </div>
               <div class="container-fluid table-responsive">                                          
               <table class="table">
                   <thead>
                   <tr id="t1">
                       <th>ID</th>                       
                       <th>First-Name</th>
                       <th>Last-Name</th>                      
                       <th>Address</th>
                       <th>City</th>
                       <th>State</th>
                       <th>Pin-Code</th>
                       <th>Contact</th>
                       <th>Email</th>
                       <th>Credit Card Type</th> 
                       <th>Credit Card Number</th>                       
                       <th>CV-Code</th>
                   </tr>
                   </thead> <br><br>                
               </tbody>
               
                   <%while(rs.next())
                   {%>                   
                   <tr id="th">
                       <td><%=i%></td> 
                       <td><%=rs.getString(2)%></td>
                       <td><%=rs.getString(3)%></td>
                       <td><%=rs.getString(4)%></td>
                       <td><%=rs.getString(5)%></td>
                       <td><%=rs.getString(6)%></td>
                       <td><%=rs.getString(7)%></td> 
                       <td><%=rs.getString(8)%></td> 
                       <td><%=rs.getString(9)%></td>
                       <td><%=rs.getString(10)%></td>
                       <td><%=rs.getString(11)%></td>                       
                       <td><%=rs.getString(13)%></td>
                     <% i++;%>
                   </tr>
                  <% }%>                  
               </tbody>               
               </table>                             
               </div>
               <div class="container-fluid home-section">
            <div class="row">
                <div class="col-md-12">
                    <a href="HomePage" class="hover">Back to Home</a>
                </div>
            </div>
        </div>

       </form>
    </body>
</html>
