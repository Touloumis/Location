<%-- 
    Document   : Map
    Created on : 13 Οκτ 2016, 3:08:03 μμ
    Author     : Nikos 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Η τοποθεσία μου</title>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 80%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 80%;
      }
    </style> 
    
    <script>
      
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 14
        });
       //var infoWindow = new google.maps.InfoWindow({map: map});

        // Try HTML5 geolocation.
        
       
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
              
            };           
            
                                //
            var contentString = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading">Βρίσκεστε εδώ</h1>'+
            '<div id="bodyContent">'+
            '<p><b>Η τοποθεσία σας</b>, είναι η εξής:  n in the southern part of the '+
            'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi)south west of the nearest large town, Alice Springs; 450&#160;km '+
            '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major features of the Uluru - Kata Tjuta National Park. Uluru is '+
            'sacred to the Pitjantjatjara and Yankunytjatjara, the Aboriginal people of the area. It has many springs, waterholes, '+
            'rock caves and ancient paintings. Uluru is listed as a World Heritage Site.</p>'+
            '</div>';

            
            var infowindow = new google.maps.InfoWindow({
          content: contentString 
        });
        
        var marker = new google.maps.Marker({
          position: pos,
          map: map,
          title: 'Βρίσκεστε εδώ'
        });
        marker.addListener('click', function() {
          infowindow.open(map, marker);
        });
        
        //

           // infoWindow.setPosition(pos);
           // infoWindow.setContent('Βρίσκεστε εδώ.');
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAW675Yall3W2kXEhOVkdZICJdI8KrQAes&callback=initMap">
    </script>
            
    </head>
    <body>
        <h1>Εύρεση τοποθεσίας</h1>
        
        <div id="map"></div>
       
        <div> 
            <p>Για να προβάλετε τισ συντεταγμένες σας πατήστε στο παρακάτω κουμπί</p>

            <button onclick="getLocation()">Συντεταγμένες</button>

            <p id="demo"> </p>    
        
        </div>
        
        <script>
            var x = document.getElementById("demo");

            function getLocation() {
                if (navigator.geolocation) {
                        navigator.geolocation.watchPosition(showPosition);
                } else {
                        x.innerHTML = "Geolocation is not supported by this browser.";}
            }
    
            function showPosition(position) {
                x.innerHTML="Γεωγραφικό Πλάτος: " + position.coords.latitude +
                "<br>Γεωγραφικό Μήκος: " + position.coords.longitude;
            }
</script>
     
    </body>
</html>
