package com.icbt.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icbt.model.Reservation;
import com.icbt.service.ReservationService;

@WebServlet("/addReservation")
public class ReservationServlet extends HttpServlet {

    private ReservationService reservationService = new ReservationService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String reservationNo = request.getParameter("reservationNo");
        String guestName = request.getParameter("guestName");
        String contact = request.getParameter("contact");
        String roomType = request.getParameter("roomType");
        String checkIn = request.getParameter("checkIn");
        String checkOut = request.getParameter("checkOut");

        // Create Reservation object
        Reservation reservation = new Reservation();
        reservation.setReservationNo(reservationNo);
        reservation.setGuestName(guestName);
        reservation.setContact(contact);
        reservation.setRoomType(roomType);
        reservation.setCheckIn(checkIn);
        reservation.setCheckOut(checkOut);

        // Save using service
        reservationService.addReservation(reservation);

        // Send success message
        request.setAttribute("successMessage", "Reservation Added Successfully!");
        request.getRequestDispatcher("views/addReservation.jsp")
               .forward(request, response);
    }
}