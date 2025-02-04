package org.moffatbay;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.password4j.*;

/**
 * Servlet implementation class UserRegistration
 */
@WebServlet("/reservation")
public class BookReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		try {
			ResultSet rs = SQLStatements.checkLogin(email);
			if (rs.next()) {
				resp.sendRedirect("jsp/UserRegistration/UserRegistrationError.jsp");
			} else {
				String check_in = req.getParameter("checkin");
				String check_out = req.getParameter("checkout");
				String guest_amt = req.getParameter("guestamt");
				String total_cost = req.getParameter("rooms");
				String password = req.getParameter("password");
				Hash hash = Password.hash(password).withBcrypt();
				String hashed = hash.getResult();
				SQLStatements.registerLogin(email, hashed);
				SQLStatements.bookReservation(check_in, check_out, guest_amt, total_cost, email, hashed);
				resp.sendRedirect("jsp/Login/RegisterSuccessLogin.jsp");
			} 
		} catch (SQLException e) {
			System.out.println(e);
			resp.sendRedirect("jsp/UserRegistration/UserRegistrationError.jsp");
		} catch (ClassNotFoundException e) {
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
