<%@ page import="java.time.LocalTime" %>
<html>
  <body>
    <%
      LocalTime now = LocalTime.now();
      String greeting;
      if (now.isBefore(LocalTime.NOON)) {
          greeting = "Good morning, Minh, Welcome to COMP367";
      } else {
          greeting = "Good afternoon, Minh, Welcome to COMP367";
      }
    %>
    <h1><%= greeting %></h1>
  </body>
</html>
