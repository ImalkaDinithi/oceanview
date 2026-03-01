package com.icbt.dao;

import java.sql.*;
import java.time.temporal.ChronoUnit;

import com.icbt.model.Bill;

public class RoomDAO {

    public Bill calculateBill(String reservationNo) {

        Bill bill = null;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT r.reservation_no, r.guest_name, r.room_type, " +
                         "r.check_in, r.check_out, rm.price_per_night " +
                         "FROM reservations r " +
                         "JOIN rooms rm ON r.room_type = rm.room_type " +
                         "WHERE r.reservation_no = ?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, reservationNo);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                bill = new Bill();

                bill.setReservationNo(rs.getString("reservation_no"));
                bill.setGuestName(rs.getString("guest_name"));
                bill.setRoomType(rs.getString("room_type"));

                Date checkInDate = rs.getDate("check_in");
                Date checkOutDate = rs.getDate("check_out");

                bill.setCheckIn(checkInDate.toLocalDate());
                bill.setCheckOut(checkOutDate.toLocalDate());

                long nights = ChronoUnit.DAYS.between(
                        checkInDate.toLocalDate(),
                        checkOutDate.toLocalDate()
                );

                bill.setNumberOfNights(nights);

                double price = rs.getDouble("price_per_night");
                bill.setPricePerNight(price);

                bill.setTotalAmount(nights * price);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bill;
    }
}
