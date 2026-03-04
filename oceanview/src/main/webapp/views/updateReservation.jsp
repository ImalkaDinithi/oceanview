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
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/dashboard.css">
<link rel="stylesheet" href="../css/form.css">
</head>
<body>
	<h2>Update Reservation</h2>

<form action="<%=request.getContextPath()%>/updateReservation" method="post">

    <input type="hidden" name="reservationNo" value="<%= r.getReservationNo() %>">

    Guest Name:
    <input type="text" name="guestName" value="<%= r.getGuestName() %>"><br><br>

    Address:
    <input type="text" name="address" value="<%= r.getAddress() %>"><br><br>

    Contact:
    <input type="text" name="contact" value="<%= r.getContact() %>"><br><br>

    Room Type:
    <input type="text" name="roomType" value="<%= r.getRoomType() %>"><br><br>

    Check In:
    <input type="date" name="checkIn" value="<%= r.getCheckIn() %>"><br><br>

    Check Out:
    <input type="date" name="checkOut" value="<%= r.getCheckOut() %>"><br><br>

    <button type="submit">Update</button>

</form>
</body>
</html>