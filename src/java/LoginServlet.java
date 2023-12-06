
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private String username1;
    private String password1;
    private String username2;
    private String password2;
    private String username3;
    private String password3;

    @Override
    public void init() throws ServletException {
        username1 = getServletConfig().getInitParameter("username1");
        password1 = getServletConfig().getInitParameter("password1");
        username2 = getServletConfig().getInitParameter("username2");
        password2 = getServletConfig().getInitParameter("password2");
        username3 = getServletConfig().getInitParameter("username3");
        password3 = getServletConfig().getInitParameter("password3");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get parameters from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate the username and password
        if (username == null || password == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Username or password is missing");
        } else if (validate(username, password)) {
            // Authentication successful, redirect to a welcome page
            response.sendRedirect("/AccountDetails.jsp");
        } else {
            // Authentication failed, handle exception
            response.sendRedirect("/Error.jsp");
        }
    }

    private boolean validate(String username, String password) {
        // Check if the provided username and password match any of the expected values
        return (username1.equals(username) && password1.equals(password))
                || (username2.equals(username) && password2.equals(password))
                || (username3.equals(username) && password3.equals(password));
    }
}
