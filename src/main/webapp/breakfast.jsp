<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Placed</title>
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
<body style="background-image: url(./img/thankyou.jpg); background-repeat: no-repeat; background-size: 80%;">

<%
int dosaQuantity = Integer.parseInt(request.getParameter("dosaQuantity"));
int pohaQuantity = Integer.parseInt(request.getParameter("pohaQuantity"));
int upmaQuantity = Integer.parseInt(request.getParameter("upmaQuantity"));
int total = dosaQuantity + pohaQuantity + upmaQuantity;

int dosa_price = 99;
int poha_price = 149;
int upma_price = 129;

int totalcost = ((dosa_price * dosaQuantity) + (pohaQuantity * poha_price) + (upmaQuantity * upma_price));

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
        <td>Masala Dosa</td>
        <td><%= dosaQuantity %></td>
        <td><%= dosaQuantity * dosa_price %></td>
      </tr>
      <tr>
        <td>Poha</td>
        <td><%= pohaQuantity %></td>
        <td><%= pohaQuantity * poha_price %></td>
      </tr>
      <tr>
        <td>Upma</td>
        <td><%= upmaQuantity %></td>
        <td><%= upmaQuantity * upma_price %></td>
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
    <input type="submit" class="pay-button" value="Pay Bill">
  </form>
</center>
</body>
</html>
