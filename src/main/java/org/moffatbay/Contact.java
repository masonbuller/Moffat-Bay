package org.moffatbay;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		try {
			if (session == null) {
				session = request.getSession();
			} 
			String name = (String) request.getAttribute("fullname");
			String email = (String) request.getAttribute("email");
			String phone = (String) request.getAttribute("phone");
			String message = (String) request.getAttribute("message");
			
			SQLStatements.contactForm(name, email, phone, message);
			
			session.setAttribute("landingMessage", "contactSuccess");
			response.sendRedirect("/Moffat-Bay/jsp/Landing/LandingPage.jsp");
			
		} catch (SQLException e) {
			System.out.println(e);	
			session.setAttribute("errorMessage", "SystemError");
			response.sendRedirect("/Moffat-Bay/jsp/AboutUs/ContactUs.jsp");
		} catch (ClassNotFoundException e) {
			session.setAttribute("errorMessage", "SystemError");
			response.sendRedirect("/Moffat-Bay/jsp/AboutUs/ContactUs.jsp");
			System.out.println(e);
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
