initAutocomplete = function() {
  var input = document.getElementById("location-input");
  var autocomplete = new google.maps.places.Autocomplete(input);
  $(input).keydown(function(event){ if(event.keyCode == 13) { event.preventDefault(); } });

  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    var place = autocomplete.getPlace();
    $("#incident_lat").val(place.geometry.location.lat())
    $("#incident_lng").val(place.geometry.location.lng())
  });
};

$(document).ready(function() {
  initAutocomplete();
  $('.datetimepicker').datetimepicker({
    format: 'YYYY-MM-DD HH:mm'
  });
})
