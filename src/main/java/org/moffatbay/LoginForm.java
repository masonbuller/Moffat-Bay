package org.moffatbay;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

import com.password4j.*;
import org.moffatbay.*;

/**
 * Servlet implementation class LoginForm
 */
@WebServlet("/LoginForm")
public class LoginForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (!req.getParameter("email").isEmpty() && !req.getParameter("password").isEmpty()) {
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			Hash hash = Password.hash(password).addRandomSalt(20).withBcrypt();
			try {
				ResultSet rs = SQLStatements.getResultSet("select * from login where email = " + email + " and password = " + password);
				if (rs.next()) {
					resp.sendRedirect("LandingPage.jsp");
				} else {
					resp.sendRedirect(req.getRequestURI() + "?error=true");
				}
			} catch (SQLException e) {
				System.out.println("Select statement failed");
			} catch (ClassNotFoundException e) {
				System.out.println("Class not found on select statement");
			}
		} else {
			resp.sendRedirect(req.getRequestURI() + "?error=true");
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
