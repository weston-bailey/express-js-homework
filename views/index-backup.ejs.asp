<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Espress Homework</title>
</head>
<body>
  <!-- input form -->
  <form action="/weather">
    <input name="zipCode" size="5" type="text">
  </form>
  <!-- message from server -->
  <h2><%= message %> </h2>
<ul>
  <!-- location data from wheather-js -->
  <h2>Location</h2>
  <%= locationData %>
  <% for(let key in locationData) { %>
    <li><%= key %> : <%= locationData[key] %></li>
    <% } %>
    <!-- current data from wheather-js -->
  <h2>Current</h2>
  <%= currentData %>
  <% for(let key in currentData) { %>
    <li><%= key %> : <%= currentData[key] %></li>
    <% } %>
    <!-- forecast data form wheather-js -->
  <h2>Forecast</h2>
  <%= forecastData %>
  <% for(let object in forecastData) { %>
      <h3>Day: <%= forecastData[object]['day'] %>  </h3>
   <%   for(let key in forecastData[object]) { %>
        <li><%= key %> : <%= forecastData[object][key] %></li>
   <% }  
    } %>
  </ul>
</body>
</html>