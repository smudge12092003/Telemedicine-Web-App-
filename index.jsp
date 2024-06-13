<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-image: url(applogo.jpg);
    background-repeat: no-repeat;
    background-size: cover;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    box-sizing: border-box;
}

a {
    text-decoration: none;
    
}
.button {
    display: flex;
    justify-content: space-around;
}

.container {
    margin-left: 120px;
    margin-right: 120px;
    padding-left: 30px;
    padding-right: 30px;
    padding-top: 10px;
    padding-bottom: 10px;
}

/* Button Styles */
.button button {
    padding: 14px 20px;
    margin-right: 120px;
    margin-left: 120px;
    border: 2px solid;
    border-radius: 5px;
    cursor: pointer;
}

.button button.login {
    background-color: transparent;
    color: green;
}

.button button.back {
    background-color: transparent;
    color: red;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
    }
}
</style>
</head>
<body>

    <h2 style="color: white; font-family: 'Times New Roman', Times, serif; font-size: xxx-large; "><center>Login Form</center></h2>
<form action="ControllerServlet" method="post">
  <div class="container" style="margin-top: 20px; background-color: white;">
    
    <label for="name"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
  </div>
  <div class="button" style="background-color: white;margin-left: 120px;margin-right: 120px;padding-bottom: 10px;">
    <button type="submit" class="login" style="color: green;">Login</button>
    <button type="button" class="back" style="color: red;"><a href="Welcome.html" style="color: red;">Back</a></button>
  </div>
</form>

</body>
</html>
