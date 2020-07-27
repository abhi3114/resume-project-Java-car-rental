package Admin;

import database.LoginService;
import database.SessionService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns =
{
    "/Login"
})
public class Login extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
         PrintWriter out = response.getWriter();
        if(SessionService.validateSession(request, response))
        {
             RequestDispatcher dispatcher = request.getRequestDispatcher("home-page.jsp");
             dispatcher.forward(request, response);
        }
        else{
            /*out.println("<script type=\"text/javascript\">");
            out.println("alert('Plz enter valid email id and password');");
            out.println("</script>");*/
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        HttpSession session;

        if(LoginService.validateLogin(username, password))
        {
            session = request.getSession();
            session.setAttribute("username", request.getParameter("username"));
            response.sendRedirect("HomePage");
        }
        else
        {
           response.sendRedirect("Login");
        }
    }
}
