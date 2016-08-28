// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var iconBase = 'http://' + window.location.host + '/assets/';

var icons = {
  hero: {
    icon: iconBase + 'glico_64x64.png'
  },
  anti_hero: {
    icon: iconBase + 'ladri_64x64.png'
  },
  gold: {
    icon: iconBase + 'caldero_64x64.png'
  },
  gem: {
    icon: iconBase + 'esmeralda_32x32.png'
  }
};

function addMarker(feature) {
  var marker = new google.maps.Marker({
    position: feature.position,
    icon: icons[feature.type].icon,
    map: map
  });
}

var map;

function initMap() {
  	    var startPoint = { lat: -34.612722, lng: -58.381592 };
  var endPoint = { lat: -34.5950000, lng: -58.381592 };

  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.603722, lng:  -58.381592},
    zoom: 17
  });

  var points = [ { position: new google.maps.LatLng(startPoint.lat, startPoint.lng), type: 'hero' },
                 { position: new google.maps.LatLng(-34.601022, -58.381592), type: 'anti_hero' },
                 { position: new google.maps.LatLng(-34.605022, -58.381592), type: 'anti_hero' },
                 { position: new google.maps.LatLng(endPoint.lat, endPoint.lng), type: 'gold' } ]

  $(points).each(function() {
    addMarker(this);
  });
}
