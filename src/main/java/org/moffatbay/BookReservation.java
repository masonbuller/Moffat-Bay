package org.moffatbay;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.password4j.*;

/**
 * Servlet implementation class BookReservation
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
			HttpSession session = req.getSession(false);
			// Check if user is logged in
			if (session == null || session.getAttribute("email") == null)
			if (rs.next()) {
				// If user not logged in, redirect to login page
				resp.sendRedirect("jsp/Login/loginForm.jsp");
			} else {
				// If user is logged in, then get the parameters and calculate the total based on the room table and how many nights they are staying and get the customer ID
				//SELECT Cost, RoomID FROM Room WHERE Bed_type = (req.getParameter('roomID')
				//SELECT CustomerID FROM Registration WHERE email = (session.getAttribute("email")
				// Then send these values to the reservation summary
				// The SQL insert occurs when the user clicks "book now" on the reservation summary page
				String check_in = req.getParameter("checkin");
				String check_out = req.getParameter("checkout");
				String guest_amt = req.getParameter("guestamt");
				String total_cost = req.getParameter("total_cost");
				String roomID = req.getParameter("roomID");
				resp.sendRedirect("jsp/Reservation/ReservationSummary.jsp");
				//Session set attributes for the checkin, checkout, guests, cost, and room type
			} 
		} catch (SQLException e) {
			System.out.println(e);
			// Redirect to a booking error page
			resp.sendRedirect("jsp/Reservation/BookReservationError.jsp");
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