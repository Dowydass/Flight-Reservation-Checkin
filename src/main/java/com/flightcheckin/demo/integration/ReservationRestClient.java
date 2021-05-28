package com.flightcheckin.demo.integration;

import com.flightcheckin.demo.integration.dto.Reservation;
import com.flightcheckin.demo.integration.dto.ReservationUpdateRequest;

public interface ReservationRestClient {
    public Reservation findReservation(Long id);

    public Reservation updateReservation(ReservationUpdateRequest request);
}
