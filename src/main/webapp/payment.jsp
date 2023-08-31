<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Gateway</title>
<Script>
alert("redirecting to billing gateway");
</Script>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: lightgrey;
        background-image:url(./img/paymentbg.png);
        background-repeat: no-repeat;
        background-size: cover;
        margin: 0;
        padding: 0;
    }

    .payment-container {
        display: flex;
        justify-content: space-between;
        margin: 20px auto;
        max-width: 1200px;
    }

    .payment-option {
        border: 1px solid #ccc;
        padding: 20px;
        width: 20%;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        background-color: lightgrey;
        text-align: center;
        transition: transform 0.2s;
        margin: 10px; 
    }

    .payment-option:hover {
        transform: scale(1.05);
    }

    .payment-option h2 {
        margin: 0;
        color: #333;
        font-size: 20px;
    }

    .payment-option img {
        max-width: 80%;
        height: auto;
        margin-top: 20px;
    }

    .payment-option button {
        background-color: #007BFF;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    .payment-option button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%
int totalcost=(int)session.getAttribute("totalcost");

%>
<center>

<h1><b>PAYMENT GATEWAY</b></h1>
<h3><i><b>Amount to be paid : Rs.<Strong><mark><%=totalcost %></mark></Strong></b></i></h3>
<div class="payment-container">
        <div class="payment-option">
            <h2>Credit Card</h2>
            <img src="./img/creditcard.png" alt="Credit Card">
            <br><br>
            <button><a href="final.html">Pay with Credit Card</a></button>
        </div>

        <div class="payment-option">
            <h2>Debit Card</h2>
            <img src="./img/debit-card.png" alt="Debit Card">
            <br><br>
            <button><a href="final.html">Pay with Debit Card</a></button>
        </div>

        <div class="payment-option">
            <h2>UPI</h2>
            <img src="./img/upi1.jpg"  alt="UPI">
            <br><br><br><br><br><br>
           <button><a href="final.html">Pay with UPI</a></button>
        </div>
    </div>
</center>
</body>
</html>
