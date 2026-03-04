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

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <span class="role-badge">STAFF</span>
        <h1>Welcome!</h1>
        <p>Ocean View Resort • Staff Dashboard</p>
    </div>
</section>

<!-- Dashboard Cards -->
<section class="stats-section">

    <div class="stat-card">
        <h2>60</h2>
        <p>Available Rooms</p>
    </div>

    <div class="stat-card">
        <h2>0</h2>
        <p>Checked In</p>
    </div>

    <div class="stat-card">
        <h2>0</h2>
        <p>Today's Check-ins</p>
    </div>

    <div class="stat-card">
        <h2>0</h2>
        <p>Today's Check-outs</p>
    </div>

</section>

</body>
</html>