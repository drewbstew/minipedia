(function() {
  var $rando, $searchButton, $searchDiv, $searchInput, $wikiWindow, checkSearchMade, getSearchResults, setWikiUrl;

  $searchButton = $("#search-btn");

  $searchInput = $("#search-input").val();

  $searchDiv = $("#search-cont");

  $rando = $("#rando");

  $wikiWindow = $("#wiki-window");

  getSearchResults = function() {
    return $.ajax({
      type: 'GET',
      dataType: 'json',
      url: setWikiUrl(),
      success: function(info) {
        var results;
        return results = JSON.parse(info);
      }
    });
  };

  checkSearchMade = function(input) {
    var searchMade;
    if ($searchInput) {
      return searchMade = true;
    }
  };

  setWikiUrl = function() {
    return "https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=" + encodeURIComponent($searchInput).toString() + "&utf8=";
  };

  $searchButton.click(function() {
    setWikiUrl();
    getSearchResults();
    return $searchInput = "";
  });

  $(function() {});

}).call(this);
