package com.icbt.service;

import com.icbt.dao.ReservationDAO;
import com.icbt.model.Reservation;

public class ReservationService {

    private ReservationDAO reservationDAO = new ReservationDAO();

    public void addReservation(Reservation reservation) {
        reservationDAO.saveReservation(reservation);
    }

	public boolean validateDates(String string, String string2) {
		// TODO Auto-generated method stub
		return false;
	}
}
