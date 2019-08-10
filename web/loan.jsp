<%-- 
    Document   : loan
    Created on : 4 Oct, 2018, 10:50:45 AM
    Author     : Sunil
--%>
<%@page import="java.sql.*"%>
        <%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head><title>JSP PAGE</title></head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<body>
  
<center> <br><br>
    <h1>TYPE OF LOAN<hr> </h1>
<br>
 <img src="c.jpg" height="450" width="450" style="float: left">
    <img src="e.jpg" height="450" width="450" style="float: right">
   
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">VEHICLE LOAN</button>

<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="success.jsp">
      <div class="container">
      <h1>VEHICLE LOAN</h1>
      <p>Please fill in this form to get loan.</p>
      <hr>
       <label for="period"><b>ACCOUNT NUMBER</b></label>
      <input type="text" placeholder="enter your 9-digit account number" maxlength="9" name="account" required>
      
      <label for="type"><b>VEHICLE TYPE</b></label>
      <input type="text" placeholder="2 wheeler/4 wheeler" name="type" pattern="[2 wheeler/4 wheeler]{9}" required>

      <label for="amount"><b>AMOUNT</b></label>
      <input type="text" placeholder="Enter amount" name="amount" required>

      <label for="period"><b>PERIOD (in years)</b></label>
      <input type="text" placeholder="1 /3 /5" name="period" pattern="[1/3/5]" required>
      
            <p>The rate of interest for the loan is 10% </p>
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">Submit</button></form>
      </div>
    </div>
  </form>
</div>

<button onclick="document.getElementById('id02').style.display='block'" name="education loan" style="width:auto;">EDUCATION LOAN</button>

<div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="success1.jsp">
    <div class="container">
      <h1>EDUCATION LOAN</h1>
      <p>Please fill in this form to get loan.</p>
      <hr>
       <label for="period"><b>ACCOUNT NUMBER</b></label>
      <input type="text" placeholder="enter your 9-digit account number" maxlength="9" name="account1" required>
      
       <label for="type"><b>EDUCATION TYPE</b></label>
      <input type="text" placeholder="UG/PG" pattern="[UG/PG]{2}" name="type" required>

      <label for="amount"><b>AMOUNT</b></label>
      <input type="text" placeholder="Enter amount" name="amount1" required>

      <label for="period"><b>PERIOD (in years)</b></label>
      <input type="text" placeholder="1/3/5 " pattern="[1/3/5]" name="period1" required>
      <p>The rate of interest for the loan is 12% </p>
           <div class="clearfix">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Submit</button>
      </div>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<form action="open.jsp">
         <input style="font-size: 150%" type="submit" value="BACK"/>
         </form>
</body>
</html>
