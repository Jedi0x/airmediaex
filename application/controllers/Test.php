<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Test extends CI_Controller
{
    public function index()
    {


        $ip = $this->input->ip_address();
        $getloc = json_decode(file_get_contents("http://ipinfo.io/"));
        print_r($getloc);

    ?><body onload="getlocation()">
    </body>
    <script src="https://code.jquery.com/jquery-1.10.1.js"></script>
    <script>

function getlocation() {
    // if (navigator.geolocation) {
    //     navigator.geolocation.getCurrentPosition(showPosition);
    // } else { 
    //     alert("Geolocation is not supported by this browser.");
    // }

    navigator.geolocation.getCurrentPosition(successCallback,errorCallback,options);
}

// function showPosition(position) {

    
//    // alert("Latitude: " + position.coords.latitude + 
//    //  "\n Longitude: " + position.coords.longitude);  

//    var url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + position.coords.latitude + "," + position.coords.longitude + "&sensor=true";

//                 $.getJSON(url, function (data) {
//                     console.log( data);
//                         // var address = data.results[0].formatted_address;
//                         // document.getElementById("address").value = address;

//                 });
// }


function displayLocation(latitude,longitude){
        var request = new XMLHttpRequest();

        var method = 'GET';
        var url = 'http://maps.googleapis.com/maps/api/geocode/json?latlng='+latitude+','+longitude+'&sensor=true';
        var async = true;

        request.open(method, url, async);
        request.onreadystatechange = function(){
          if(request.readyState == 4 && request.status == 200){
            var data = JSON.parse(request.responseText);
            var address = data.results[0];
            document.write(address.formatted_address);
          }
        };
        request.send();
      };

      var successCallback = function(position){
        var x = position.coords.latitude;
        var y = position.coords.longitude;
        displayLocation(x,y);
      };

      var errorCallback = function(error){
        var errorMessage = 'Unknown error';
        switch(error.code) {
          case 1:
            errorMessage = 'Permission denied';
            break;
          case 2:
            errorMessage = 'Position unavailable';
            break;
          case 3:
            errorMessage = 'Timeout';
            break;
        }
        document.write(errorMessage);
      };

      var options = {
        enableHighAccuracy: true,
        timeout: 1000,
        maximumAge: 0
      };

      navigator.geolocation.getCurrentPosition(successCallback,errorCallback,options);



</script>

<?php


    }



    
}
