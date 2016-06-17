(function() {
  var $rando, $searchButton, $searchDiv, $searchInput, $wikiWindow, checkSearchMade, createCORSRequest, getSearchResults, setWikiUrl,
    indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  $searchButton = $("#search-btn");

  $searchInput = $("#search-input");

  $searchDiv = $("#search-cont");

  $rando = $("#rando");

  $wikiWindow = $("#wiki-window");

  createCORSRequest = function() {
    var method, url, xhr;
    url = setWikiUrl();
    method = 'GET';
    xhr = new XMLHttpRequest();
    if (indexOf.call(xhr, "withCredentials") >= 0) {
      return xhr.open(method, url, true);
    } else if (typeof XDomainRequest !== "undefined") {
      xhr = new XDomainRequest();
      return xhr.open(method, url);
    } else {
      return xhr = null;
    }
  };

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
    return "https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=" + encodeURIComponent(input) + "&utf8=";
  };

  $searchButton.click(function() {
    setWikiUrl();
    getSearchResults();
    return $searchInput = "";
  });

}).call(this);
