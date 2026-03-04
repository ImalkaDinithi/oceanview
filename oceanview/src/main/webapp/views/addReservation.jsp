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
    				
    				<% if (request.getAttribute("errorMessage") != null) { %>
    					<div class="error-message">
        					<%= request.getAttribute("errorMessage") %>
    					</div>
					<% } %>

					<form action="<%= request.getContextPath() %>/addReservation" method="post" class="reservation-form">

						<div class="form-group">
							<label>Reservation No</label>
							<input type="text" name="reservationNo"
       						value="<%= request.getAttribute("reservationNo") != null ? request.getAttribute("reservationNo") : "" %>"
       						required>
						</div>

						<div class="form-group">
							<label>Guest Name</label>
							<input type="text" name="guestName"
       						value="<%= request.getAttribute("guestName") != null ? request.getAttribute("guestName") : "" %>"
       						required>
						</div>
						
						<div class="form-group">
							<label>Address</label>
							<input type="text" name="address"
       						value="<%= request.getAttribute("address") != null ? request.getAttribute("address") : "" %>"
       						required>
						</div>

						<div class="form-group">
							<label>Contact</label>
							<input type="text" name="contact"
       						value="<%= request.getAttribute("contact") != null ? request.getAttribute("contact") : "" %>"
       						required>
						</div>

						<div class="form-group">
    						<label>Room Type</label>
    						<select name="roomType" required class="form-control">

        					<option value="">-- Select Room Type --</option>

        					<option value="Standard"
            					<%= "Standard".equals(request.getAttribute("roomType")) ? "selected" : "" %>>
            					Standard
        					</option>

        					<option value="Deluxe"
            					<%= "Deluxe".equals(request.getAttribute("roomType")) ? "selected" : "" %>>
            					Deluxe
        					</option>

        					<option value="Suite"
            					<%= "Suite".equals(request.getAttribute("roomType")) ? "selected" : "" %>>
            					Suite
        					</option>

    						</select>
						</div>
						<div class="form-group">
							<label>Check In</label>
							<input type="date" name="checkIn"
       						value="<%= request.getAttribute("checkIn") != null ? request.getAttribute("checkIn") : "" %>"
       						required>
						</div>

						<div class="form-group">
							<label>Check Out</label>
							<input type="date" name="checkOut"
       						value="<%= request.getAttribute("checkOut") != null ? request.getAttribute("checkOut") : "" %>"
       						required>
						</div>

						<button type="submit" class="btn">Save Reservation</button>

					</form>
				</div>
			</div>

	</body>

	</html>