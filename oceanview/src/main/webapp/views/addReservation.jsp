<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Add Reservation</title>
		<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/css/dashboard.css">
    	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/addReservation.css">				
	</head>

	<body>

		<%@ include file="../common/navbar.jsp" %>

			<div class="container">
				<div class="form-card">
					<h2>Add New Reservation</h2>
					
					<% if (request.getAttribute("successMessage") != null) { %>
        				<div class="success-message">
           	 				<%= request.getAttribute("successMessage") %>
        				</div>
    				<% } %>

					<form action="../ReservationServlet" method="post" class="reservation-form">

						<div class="form-group">
							<label>Reservation No</label>
							<input type="text" name="reservationNo" required>
						</div>

						<div class="form-group">
							<label>Guest Name</label>
							<input type="text" name="guestName" required>
						</div>
						
						<div class="form-group">
							<label>Address</label>
							<input type="text" name="address" required>
						</div>

						<div class="form-group">
							<label>Contact</label>
							<input type="text" name="contact" required>
						</div>

						<div class="form-group">
    						<label>Room Type</label>
    						<select name="roomType" required class="form-control">
        						<option value="">-- Select Room Type --</option>
        						<option value="Standard">Standard</option>
        						<option value="Deluxe">Deluxe</option>
        						<option value="Suite">Suite</option>
    						</select>
						</div>

						<div class="form-group">
							<label>Check In</label>
							<input type="date" name="checkIn" required>
						</div>

						<div class="form-group">
							<label>Check Out</label>
							<input type="date" name="checkOut" required>
						</div>

						<button type="submit" class="btn">Save Reservation</button>

					</form>
				</div>
			</div>

	</body>

	</html>