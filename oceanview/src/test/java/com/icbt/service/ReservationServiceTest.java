package com.icbt.service;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class ReservationServiceTest {

    @Test
    void testDateValidation() {

        ReservationService service = new ReservationService();

        boolean result = service.validateDates("2026-03-10", "2026-03-12");

        // Intentionally wrong
        assertFalse(result);
    }
}