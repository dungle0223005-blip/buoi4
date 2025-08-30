<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Email List Application</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body>
<div class="container">
    <div class="header">
        <img src="images/murachlogo.jpg" class="logo" alt="Logo">
        <h1>Join our email list</h1>
    </div>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">

        <fieldset>
            <legend>Your information:</legend>
            <label>First Name</label>
            <input type="text" name="firstName">

            <label>Last Name</label>
            <input type="text" name="lastName">

            <label>Email</label>
            <input type="email" name="email">

            <label>Date of Birth</label>
            <input type="date" name="dob">
        </fieldset>

        <fieldset>
            <legend>How did you hear about us?</legend>
            <input type="radio" name="heardFrom" value="Search engine" checked> Search engine
            <input type="radio" name="heardFrom" value="Word of mouth"> Word of mouth
            <input type="radio" name="heardFrom" value="Social Media"> Social Media
            <input type="radio" name="heardFrom" value="Other"> Other
        </fieldset>

        <fieldset>
            <legend>Would you like to receive announcements about new CDs and special offers?</legend>
            <input type="checkbox" name="wantsUpdates" value="yes"> YES, I'd like that.<br>
            <input type="checkbox" name="emailOK" value="yes"> YES, please send me email announcements.
        </fieldset>

        <label>Please contact me by:</label>
        <select name="contactVia">
            <option value="Both">Email or postal mail</option>
            <option value="Email">Email only</option>
            <option value="Postal">Postal mail only</option>
        </select>

        <br><br>
        <!-- Nút Submit bình thường -->
        <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>
