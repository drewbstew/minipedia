(function() {
  var $rando, $searchBox, $searchButton, $searchDiv, $wikiWindow, loadWiki;

  $searchButton = $("#search-btn");

  $searchBox = $("#search-box");

  $searchDiv = $("#search-cont");

  $rando = $("#rando");

  $wikiWindow = $("#wiki-window");

  loadWiki = function(url) {
    return $wikiWindow.html("<object data: \'" + url + "\' />");
  };

  $rando.click(function() {
    return loadWiki("https://en.wikipedia.org/wiki/Special:Random");
  });

}).call(this);
