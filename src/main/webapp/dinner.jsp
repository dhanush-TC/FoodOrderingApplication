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

  
  .pay-button {
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
<body Style="background-image:url(./img/thankyou.jpg); background-repeat: no-repeat; background-size: 80%;">

<%!
int vegbirQuantity = 0;
int paneertikkaQuantity = 0;
int butterchickenQuantity = 0;
%>
<%
vegbirQuantity = Integer.parseInt(request.getParameter("vegbirQuantity"));
paneertikkaQuantity = Integer.parseInt(request.getParameter("paneertikkaQuantity"));
butterchickenQuantity = Integer.parseInt(request.getParameter("butterchickenQuantity"));

int total = vegbirQuantity + paneertikkaQuantity + butterchickenQuantity;

int vegbiriyani_price = 299;
int pannertikka_price = 229;
int butterchicken_price = 369;

int totalcost = ((vegbiriyani_price * vegbirQuantity) + (paneertikkaQuantity * pannertikka_price) + (butterchickenQuantity * butterchicken_price));
session.setAttribute("totalcost", totalcost);
%>

<center>
  <form action="payment.jsp" method="post">
    <table border="1" Style="border-collapse: collapse; width: 50%; margin: auto; background-color: lightblue;">
      <tr>
        <th>Ordered Item</th>
        <th>Quantity</th>
        <th>Amount</th>
      </tr>
      <tr>
        <td>Veg Biriyani</td>
        <td><%= vegbirQuantity %></td>
      </tr>
      <tr>
        <td>Panner Tikka</td>
        <td><%= paneertikkaQuantity %></td>
      </tr>
      <tr>
        <td>Butter Chicken</td>
        <td><%= butterchickenQuantity %></td>
      </tr>
      <tr></tr>
      <tr>
        <td>Total Items</td>
        <td><%= total %></td>
        <td><%= totalcost %></td>
      </tr>
    </table>
    <br>
    <br>
    <input type="submit" class="pay-button" value="Pay bill"> 
  </form>
</center>
</body>
</html>
