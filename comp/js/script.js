(function() {
  var $rando, $searchButton, $searchDiv, $searchInput, $wikiWindow, checkSearchMade, getSearchResults, setWikiUrl;

  $searchButton = $("#search-btn");

  $searchInput = $("#search-input");

  $searchDiv = $("#search-cont");

  $rando = $("#rando");

  $wikiWindow = $("#wiki-window");

  getSearchResults = function() {
    var wikiUrl;
    wikiUrl = setWikiUrl();
    return $.ajax({
      xhrFields: {
        withCredentials: true
      },
      crossDomain: true,
      type: 'GET',
      dataType: 'json',
      headers: {
        'Api-User-Agent': 'Example/1.0'
      },
      url: wikiUrl,
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
    var input;
    input = $searchInput.val();
    return "https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=" + encodeURIComponent(input) + "&utf8=&callback=?";
  };

  $searchButton.click(function() {
    setWikiUrl();
    getSearchResults();
    return $searchInput = "";
  });

}).call(this);
