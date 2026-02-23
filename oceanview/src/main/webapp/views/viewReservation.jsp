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
							<!-- Data will come from backend later -->
						</tbody>
					</table>
				</div>
			</div>

	</body>

	</html>