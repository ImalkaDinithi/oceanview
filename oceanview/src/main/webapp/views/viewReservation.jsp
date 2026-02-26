<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>View Reservations</title>
		<link rel="stylesheet" href="../css/style.css">
		<link rel="stylesheet" href="../css/viewReservation.css">
	</head>

	<body>

		<%@ include file="../common/navbar.jsp" %>
		<%@ page import="java.util.List" %>
		<%@ page import="com.icbt.model.Reservation" %>
		<%@ page import="com.icbt.dao.ReservationDAO" %>

			<div class="container">
				<div class="table-card">
					<h2>Reservation List</h2>

					<table class="reservation-table">
						<thead>
							<tr>
								<th>Reservation No</th>
								<th>Guest Name</th>
								<th>Room Type</th>
							</tr>
						</thead>
						<tbody>

						<%
    						ReservationDAO dao = new ReservationDAO();
    						List<Reservation> reservations = dao.getAllReservations();

    						for (Reservation r : reservations) {
						%>

						<tr>
    						<td><%= r.getReservationNo() %></td>
    						<td><%= r.getGuestName() %></td>
    						<td><%= r.getRoomType() %></td>
						</tr>

						<%
   							 }
						%>

						</tbody>
					</table>
				</div>
			</div>

	</body>

	</html>