<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient Details</title>
<style>
        body {
            font-family: Arial, Helvetica, sans-serif;
		    background-image: url(applogo.jpg);
		    background-repeat: no-repeat;
		    background-size: cover;
        }

        input[type=text], input[type=date], input[type=password], input[type=email], input[type=age], .doctorselect {
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
<script>
    // JavaScript to update time slot based on selected doctor
    function updateTimeSlot() {
        var doctor = document.getElementById("doctor").value;
        var timeSlotInput = document.getElementById("timeSlot");
        
        // Reset time slot input
        timeSlotInput.value = "";
        
        // Set time slot based on selected doctor
        switch (doctor) {
            case "Dr Vineeth":
                timeSlotInput.value = "6:00AM - 12:00PM";
                break;
            case "Dr Pradhyuman":
                timeSlotInput.value = "1:00PM - 9:00PM";
                break;
            case "Dr Harish":
                timeSlotInput.value = "10:00PM - 5:00AM";
                break;
            default:
                timeSlotInput.value = "";
                break;
        }
    }
</script>
</head>
<body>
<h2 style="color: white; font-family: 'Times New Roman', Times, serif; font-size: xxx-large;"><center>Update Patient details</center></h2>
  <form action="update.jsp" method="post">
    <div class="container" style="margin-top: 20px; background-color: white;">
        <label for="Name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" required>
        
        <label for="Age"><b>Age</b></label>
        <input type="text" placeholder="Enter Age" name="age" required>
        
        <label for="Cause"><b>Cause</b></label>
        <input type="text" placeholder="Enter Cause" name="cause" required>
        
        <label for="Doctor"><b>Doctor</b></label>
             <select id="doctor" name="doctor" class="doctorselect" onchange="updateTimeSlot()">
               <option value="">Select Doctor</option>
            <option value="Dr Vineeth">Dr Vineeth</option>
            <option value="Dr Pradhyuman">Dr Pradhyuman</option>
            <option value="Dr Harish">Dr Harish</option>
        </select>
        
        <label for="TimeSlot"><b>Time Slot</b></label>
        <input type="text" id="timeSlot" placeholder="Select Doctor first" name="timeSlot" readonly required>
        
        <label for="Date"><b>Date</b></label>
        <input type="date" placeholder="Enter Date" name="date" required>
    </div>
    
    <div class="button" style="background-color: white;margin-left: 120px;margin-right: 120px;padding-bottom: 10px;">
        <button type="submit" class="login">Submit</button>
        <button type="button" class="back"><a href="Disp.jsp" style="color: red;">Back</a></button>
    </div>
<%
   int uq=0;
try {
       Class.forName("com.mysql.jdbc.Driver"); 
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fresh","root","");
       String sql="UPDATE addbudget SET name=?, email=?, =?, time_slot=?, date=? WHERE name=?";
       PreparedStatement pstatement = con.prepareStatement(sql);
	   pstatement.setInt(1, Integer.parseInt(request.getParameter("age")));
	   pstatement.setString(2, request.getParameter("cause"));
	   pstatement.setString(3, request.getParameter("doctor"));
	   pstatement.setString(4, request.getParameter("timeSlot"));
	   pstatement.setDate(5, java.sql.Date.valueOf(request.getParameter("date")));
	   pstatement.setString(6, request.getParameter("name"));
	   uq=pstatement.executeUpdate();
	   pstatement.close();
       con.close();
}
catch(Exception ex) { 
	//out.println("Unable to connect to database.");
}
 
if (uq != 0) {
%>
<div class="container" style="margin-top: 20px; background-color: white;">
        <h3>Patient Data Updated Sucessfully</h3>
         <button style="border-color:green;border-radius:5px;"><a href="Disp.jsp" style="color:green;">View</a></button>
    </div>
    <%
              } %>                
  </form>    
    
</body>
</html>
