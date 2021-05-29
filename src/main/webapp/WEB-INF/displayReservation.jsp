<%--
  Created by IntelliJ IDEA.
  User: DovydasIT
  Date: 5/29/2021
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reservation Details</title>
</head>
<body>
<h2>Flight Details:</h2>

Airlines: ${reservation.flight.operatingAirlines}
Flight No: ${reservation.flight.flightNumber}
Airlines: ${reservation.flight.departureCity}
Airlines: ${reservation.flight.arrivalCity}
Airlines: ${reservation.flight.dateOfDeparture}
Estimated Departure Time: ${reservation.flight.estimateDepartureTime}

<h2>Passenger Details</h2>
First Name: ${reservation.pasenger.firstName}
Last Name: ${reservation.pasenger.lastName}
Email: ${reservation.pasenger.email}
Phone: ${reservation.pasenger.phone}


<form action="completeCheckIn" method="post">
               Enter The Number Of Bags You want to check in: <input type="text" name="numberOfBags"/>
    <input type="hidden" value="${reservation.id}"/>
            <input type="submit" value="Check In"/>

</form>
</body>
</html>
