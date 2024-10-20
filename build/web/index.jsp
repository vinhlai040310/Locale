<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="jakarta.servlet.*,jakarta.servlet.http.*" %>
<%@ page import="java.text.DateFormat,java.util.Date" %>
<%@ page import="java.text.NumberFormat" %>

<%
    // Set response content type
    response.setContentType("text/html; charset=UTF-8");
    response.setHeader("Content-Language", "en");

    // Get the client's Locale
    Locale locale = request.getLocale();

    // Format date
    String date = DateFormat.getDateTimeInstance(
            DateFormat.FULL, 
            DateFormat.SHORT, 
            locale).format(new Date());

    // Format currency
    NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);
    String formattedCurr = currencyFormatter.format(1000000);

    // Format percentage
    NumberFormat percentFormatter = NumberFormat.getPercentInstance(locale);
    String formattedPerc = percentFormatter.format(0.51);

%>
<!DOCTYPE html>
<html>
<head>
   <title>Locale Specific Information</title>
</head>
<body>
   <center>
      <h1>Locale-Specific Information</h1>
   </center>
   <div align="center">
      <h2>In English</h2>
      <p>Hello, World!</p>
      <p>Local Date: <% out.print(date); %></p>
      <p>Formatted Currency: <% out.print(formattedCurr); %></p>
      <p>Formatted Percentage: <% out.print(formattedPerc); %></p>
   </div>
</body>
</html>
