package com.icbt.dao;

import com.icbt.model.Reservation;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReservationDAO {

    public void saveReservation(Reservation reservation) {

        try (Connection con = DBConnection.getConnection()) {

            String sql = "INSERT INTO reservations (reservation_no, guest_name, address, contact, room_type, check_in, check_out) VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, reservation.getReservationNo());
            ps.setString(2, reservation.getGuestName());
            ps.setString(3, reservation.getAddress());
            ps.setString(4, reservation.getContact());
            ps.setString(5, reservation.getRoomType());
            ps.setString(6, reservation.getCheckIn());
            ps.setString(7, reservation.getCheckOut());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Reservation> getAllReservations() {

        List<Reservation> list = new ArrayList<>();

        try (Connection con = DBConnection.getConnection()) {

            String sql = "SELECT * FROM reservations";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Reservation r = new Reservation();
                r.setReservationNo(rs.getString("reservation_no"));
                r.setGuestName(rs.getString("guest_name"));
                r.setRoomType(rs.getString("room_type"));
                list.add(r);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}