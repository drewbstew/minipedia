(function() {
  wikiUrl;
  searchMade;
  var $rando, $searchBox, $searchButton, $searchDiv, $wikiWindow, app, checkSearchMade, getSearchResults;

  $searchButton = $("#search-btn");

  $searchBox = $("#search-box");

  $searchDiv = $("#search-cont");

  $rando = $("#rando");

  $wikiWindow = $("#wiki-window");

  app = angular.module('wiki', []);

  app.controller('wikiController', function() {
    this.results = {};
    return this.search.input = function(input) {
      var wikiUrl;
      return wikiUrl = "https://en.wikipedia.org/w/api.php?action=opensearch&search=" + input.toString();
    };
  });

  getSearchResults = function() {
    return $.ajax({
      type: 'GET',
      dataType: 'json',
      url: wikiURL,
      success: function(info) {
        var results;
        return results = JSON.parse(info);
      }
    });
  };

  checkSearchMade = function(input) {
    var searchMade;
    if (input) {
      return searchMade = true;
    }
  };

  $searchButton.click(function() {
    return getSearchResults();
  });

  $(function() {});

}).call(this);
