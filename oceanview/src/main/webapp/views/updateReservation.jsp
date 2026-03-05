<%@ page import="com.icbt.dao.ReservationDAO" %>
<%@ page import="com.icbt.model.Reservation" %>

<%
	String id = request.getParameter("id");
	ReservationDAO dao = new ReservationDAO();
	Reservation r = dao.getReservationById(id);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Update Reservation</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/dashboard.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/form.css">
</head>
<body>
	<body>

<div class="container-form">
    <div class="form-card">

        <h2>Update Reservation</h2>

        <form action="<%=request.getContextPath()%>/updateReservation" method="post">

            <input type="hidden" name="reservationNo" value="<%= r.getReservationNo() %>">

            <label>Guest Name</label>
            <input type="text" name="guestName" value="<%= r.getGuestName() %>" required>

            <label>Address</label>
            <input type="text" name="address" value="<%= r.getAddress() %>" required>

            <label>Contact</label>
            <input type="text" name="contact" value="<%= r.getContact() %>" required>

            <label>Room Type</label>
            <input type="text" name="roomType" value="<%= r.getRoomType() %>" required>

            <label>Check In</label>
            <input type="date" name="checkIn" value="<%= r.getCheckIn() %>" required>

            <label>Check Out</label>
            <input type="date" name="checkOut" value="<%= r.getCheckOut() %>" required>

            <button type="submit">Update Reservation</button>

        </form>

    </div>
</div>

</body>
</html>