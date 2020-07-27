package Customer;

import database.LoginService;
import database.SessionService;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CustomerLogin", urlPatterns =
{
    "/CustomerLogin"
})
public class CustomerLogin extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        if(SessionService.validateSession(request, response))
        {
             RequestDispatcher dispatcher = request.getRequestDispatcher("customer-homepage.jsp");
             dispatcher.forward(request, response);
        }
        else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("customer-login.jsp");
            dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        HttpSession session;
        
        if(LoginService.validateLoginCustomer(username, password))
        {
            session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("CustomerHomePage");
        }
        else
        {
            response.sendRedirect("CustomerLogin");
        }
    }
}
