<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Summary</title>
<style>
  th, td {
    padding: 10px;
    text-align: left;
  }

  th {
    background-color: lightgray;
  }

  td {
    border: none; 
    text-align: center;
  }
  .payment-button {
    background-color: green; 
    color: white; 
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
    margin-right: 400px; 
  }
</style>
</head>
<body style="background-image:url(./img/thankyou.jpg); background-repeat: no-repeat; background-size: 80%;">

<%
int vegwrapQuantity = Integer.parseInt(request.getParameter("vegwrapQuantity"));
int vegbowlQuantity = Integer.parseInt(request.getParameter("vegbowlQuantity"));
int grilledQuantity = Integer.parseInt(request.getParameter("grilledQuantity"));
int total = vegwrapQuantity + vegbowlQuantity + grilledQuantity;

int vegwrap_price = 199;
int vegbowl_price = 249;
int grilledcheicken_price = 349;

int totalcost = (vegwrapQuantity * vegwrap_price) + (vegbowlQuantity * vegbowl_price) + (grilledQuantity * grilledcheicken_price);
session.setAttribute("totalcost", totalcost);
%>

<center>
  <form action="payment.jsp" method="post">
    <table border="1" style="border-collapse: collapse; width: 50%; margin: auto; background-color: lightblue;">
      <tr>
        <th>Ordered Item</th>
        <th>Quantity</th>
        <th>Amount</th>
      </tr>
      <tr>
        <td>Veg Wrap</td>
        <td><%= vegwrapQuantity %></td>
        <td><%= vegwrapQuantity * vegwrap_price %></td>
      </tr>
      <tr>
        <td>Veggie Bowl</td>
        <td><%= vegbowlQuantity %></td>
        <td><%= vegbowlQuantity * vegbowl_price %></td>
      </tr>
      <tr>
        <td>Grilled Chicken</td>
        <td><%= grilledQuantity %></td>
        <td><%= grilledQuantity * grilledcheicken_price %></td>
      </tr>
      <tr></tr>
      <tr>
        <td>TOTAL ITEMS</td>
        <td><%= total %></td>
        <td><b><%= totalcost %></b></td>
      </tr>
    </table>
    <br>
    <br>
    <input type="submit" class="payment-button" value="Make Payment">
  </form>
</center>
</body>
</html>
