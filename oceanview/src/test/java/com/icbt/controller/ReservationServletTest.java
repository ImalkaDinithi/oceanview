package com.icbt.controller;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

import com.icbt.service.ReservationService;
import com.icbt.model.Reservation;

public class ReservationServletTest {

    @Test
    void testCreateReservationObject() {

        Reservation reservation = new Reservation();

        reservation.setReservationNo("RES101");
        reservation.setGuestName("John");
        reservation.setContact("0771234567");
        reservation.setRoomType("Standard");
        reservation.setCheckIn("2026-03-10");
        reservation.setCheckOut("2026-03-12");

        assertEquals("John", reservation.getGuestName());
    }
}
