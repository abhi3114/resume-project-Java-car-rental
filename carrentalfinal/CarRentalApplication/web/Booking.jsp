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
             String q = "SELECT * FROM Vehicles WHERE taken=?";
            PreparedStatement stmt = c.prepareStatement(q);
            stmt.setString(1, "unavailable");
            ResultSet rs = stmt.executeQuery();

           /* Statement statement = c.createStatement();
             
            String ll="unavailable";

            ResultSet rs = 
                statement.executeQuery("SELECT * FROM vehicles where taken="+ll+" ") ; */

           int i=1;
               %>
               <center><br>
               <div class="btn btn-primary">
               <div class="col-sm-12">
        <center><h2>My Booking Record</h2></center>
               </div></center>
               </div>
               
               <div class="container-fluid table-responsive">                                          
               <table class="table">
                   <thead>
                   <tr id="t1">
                       <th>ID</th>                       
                       <th>Car-name</th>
                       <th>Model</th>                      
                       <th>Year</th>
                       <th>Transmission</th>
                       <th>Rate Per km</th>
                       <th>Rate Per Day</th>                      
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
                      
                     <% i++;%>
                   </tr>
                  <% }%>                  
               </tbody>               
               </table>                             
               </div>
               <div class="container-fluid home-section">
            <div class="row">
                <div class="col-md-12">
                    <a href="customer-homepage.jsp" class="hover">Back to Home</a>
                </div>
            </div>
        </div>

       </form>
    </body>
</html>
