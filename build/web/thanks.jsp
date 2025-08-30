<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="images/murachlogo.jpg" alt="Murach Logo" class="logo">
            <h1>Thanks for taking our survey!</h1>
            <p>Here is the information that you entered:</p>
        </div>

        <div class="info-box">
            <label>First Name:</label>
            <span>${user.firstName}</span><br>

            <label>Last Name:</label>
            <span>${user.lastName}</span><br>

            <label>Email:</label>
            <span>${user.email}</span><br>

            <label>Date of Birth:</label>
            <span>${user.dob}</span><br>

            <label>Heard From:</label>
            <span>${user.heardFrom}</span><br>

            <label>Wants Updates:</label>
            <span>${user.wantsUpdates}</span><br>

            <label>Email OK:</label>
            <span>${user.emailOK}</span><br>

            <label>Contact Via:</label>
            <span>${user.contactVia}</span><br>
        </div>

        <form action="emailList" method="post">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
    </div>
</body>
</html>
