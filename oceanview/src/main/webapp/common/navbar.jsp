<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="navbar">
    <a href="<%=request.getContextPath()%>/views/dashboard.jsp">Dashboard</a>
    <a href="<%=request.getContextPath()%>/views/addReservation.jsp">Add Reservation</a>
    <a href="<%=request.getContextPath()%>/views/viewReservation.jsp">View Reservations</a>
    <a href="<%=request.getContextPath()%>/views/bill.jsp">Billing</a>
    <a href="<%=request.getContextPath()%>/views/help.jsp">Help</a>
    <a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
</div>