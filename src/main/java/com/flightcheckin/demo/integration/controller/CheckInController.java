package com.flightcheckin.demo.integration.controller;

import com.flightcheckin.demo.integration.ReservationRestClientImpl;
import com.flightcheckin.demo.integration.dto.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckInController {

    @Autowired
    ReservationRestClientImpl restClient;

    @RequestMapping("/showStartCheckin")
    public String showStartCheckin(){
        return "startCheckIn";
    }

    @RequestMapping("/startCheckIn")
    public String startCheckIn(Long reservationId, ModelMap modelMap){
        Reservation reservation = restClient.findReservation(reservationId);
        modelMap.addAttribute("reservation", reservation);
        return "displayReservationDetails";

    }

}
