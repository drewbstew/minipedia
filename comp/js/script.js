(function() {
  var $rando, $searchBox, $searchButton, $searchDiv, setRandoWidth;

  $searchButton = $("#search-btn");

  $searchBox = $("#search-box");

  $searchDiv = $(".search");

  $rando = $("#rando");

  setRandoWidth = function() {
    var searchDivWidth;
    searchDivWidth = $searchDiv.width();
    return $rando.width(searchDivWidth);
  };

  $(function() {
    return setRandoWidth();
  });

}).call(this);
