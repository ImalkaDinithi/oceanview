<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<title>Dashboard</title>
		<link rel="stylesheet" href="../css/style.css">
		<link rel="stylesheet" href="../css/dashboard.css">
	</head>

	<body>

		<%@ include file="../common/navbar.jsp" %>

			<!-- Main Content -->
			<main class="main-content">

				<header class="topbar">
					<h1>OceanView Reservation Dashboard</h1>
				</header>

				<section class="cards">

					<div class="card">
						<h3>Total Reservations</h3>
						<p>125</p>
					</div>

					<div class="card">
						<h3>Today's Bookings</h3>
						<p>18</p>
					</div>

					<div class="card">
						<h3>Pending Payments</h3>
						<p>7</p>
					</div>

				</section>

				<section class="welcome-section">
					<img src="<%=request.getContextPath()%>/images/hotel.jpg" alt="Ocean View" class="dashboard-image">
				</section>

			</main>

	</body>

	</html>