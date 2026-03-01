package com.icbt.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.icbt.dao.RoomDAO;
import com.icbt.model.Bill;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/bill")
public class BillServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String reservationNo = request.getParameter("reservationNo");

        RoomDAO dao = new RoomDAO();
        Bill bill = dao.calculateBill(reservationNo);

        if (bill != null) {
            request.setAttribute("bill", bill);
            RequestDispatcher rd = request.getRequestDispatcher("views/billResult.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("error", "Reservation not found!");
            RequestDispatcher rd = request.getRequestDispatcher("views/bill.jsp");
            rd.forward(request, response);
        }
    }
}