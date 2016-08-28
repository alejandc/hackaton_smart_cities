initAutocompleteCargaTrayecto = function() {
  var inputOrigin = document.getElementById("location-input-origin");
  var autocompleteOrigin = new google.maps.places.Autocomplete(inputOrigin);
  $(inputOrigin).keydown(function(event){ if(event.keyCode == 13) { event.preventDefault(); } });

  google.maps.event.addListener(autocompleteOrigin, 'place_changed', function() {
    var place = autocompleteOrigin.getPlace();
    $("#lat-origin").val(place.geometry.location.lat())
    $("#lng-origin").val(place.geometry.location.lng())
  });

  var inputDestination = document.getElementById("location-input-destination");
  var autocompleteDestination = new google.maps.places.Autocomplete(inputDestination);
  $(inputDestination).keydown(function(event){ if(event.keyCode == 13) { event.preventDefault(); } });

  google.maps.event.addListener(autocompleteDestination, 'place_changed', function() {
    var place = autocompleteDestination.getPlace();
    $("#lat-destination").val(place.geometry.location.lat())
    $("#lng-destination").val(place.geometry.location.lng())
  });
};

$(document).ready(function() {
  $(".travel-options button").on("click", function() {
    $("#travel-option").val($(this).val());
  });
});