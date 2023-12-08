<%-- 
    Document   : Confirmation
    Created on : 12 8, 23, 7:58:00 PM
    Author     : blasi
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pickup and Drop-off Form</title>
</head>
<body>
    <h2>Reservation Form</h2>
    <form id="reservationForm" action="ShoppingCartServlet.jsp" method="post">
        <h3>Pickup Date</h3>
        <label for="pickupMonth">Month:</label>
        <input type="number" id="pickupMonth" name="pickupMonth" min="1" max="12" required>

        <label for="pickupDay">Day:</label>
        <input type="number" id="pickupDay" name="pickupDay" min="1" max="31" required>

        <label for="pickupYear">Year:</label>
        <input type="number" id="pickupYear" name="pickupYear" required>

        <h3>Drop-off Date</h3>
        <label for="dropOffMonth">Month:</label>
        <input type="number" id="dropOffMonth" name="dropOffMonth" min="1" max="12" required>

        <label for="dropOffDay">Day:</label>
        <input type="number" id="dropOffDay" name="dropOffDay" min="1" max="31" required>

        <label for="dropOffYear">Year:</label>
        <input type="number" id="dropOffYear" name="dropOffYear" required>

        <label for="pickupTime">Time of Pickup:</label>
        <input type="time" id="pickupTime" name="pickupTime" min="05:00" max="23:59" required><br>

        <label for="dropOffTime">Time of Drop-off:</label>
        <input type="time" id="dropOffTime" name="dropOffTime" min="05:00" max="23:59" required><br>

        <label for="pickupDropOffStreet">Pickup/Drop-off Street:</label>
        <input type="text" id="pickupDropOffStreet" name="pickupDropOffStreet" required><br>

        <label for="barangay">Barangay:</label>
        <input type="text" id="barangay" name="barangay" required><br>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required><br>

        <label for="region">Region:</label>
        <input type="text" id="region" name="region" required><br>

        <label for="zip">ZIP Code:</label>
        <input type="number" id="zip" name="zip" pattern="\d{4}" required><br>

        <button type="submit" onclick="return validateDates()">Submit</button>

        <script>
            function validateDates() {
                var pickupMonth = document.getElementById('pickupMonth').value;
                var pickupDay = document.getElementById('pickupDay').value;
                var pickupYear = document.getElementById('pickupYear').value;

                var dropOffMonth = document.getElementById('dropOffMonth').value;
                var dropOffDay = document.getElementById('dropOffDay').value;
                var dropOffYear = document.getElementById('dropOffYear').value;

                // Validate using JavaScript
                if (!isValidDate(pickupMonth, pickupDay, pickupYear) || !isValidDate(dropOffMonth, dropOffDay, dropOffYear)) {
                    alert('Invalid date. Please enter a valid date.');
                    return false;
                }

                return true;
            }

            function isValidDate(month, day, year) {
                var date = new Date(year, month - 1, day);
                return (
                    date.getMonth() + 1 === parseInt(month) &&
                    date.getDate() === parseInt(day) &&
                    date.getFullYear() === parseInt(year)
                );
            }
        </script>
    </form>
</body>
</html>
