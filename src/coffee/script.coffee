# Code by DrewBStew

# GLOBAL VARIABLES

# SELECTORS

$searchButton = $ "#search-btn"
$searchInput = $("#search-input").val()
$searchDiv = $ "#search-cont"
$rando = $ "#rando"
$wikiWindow = $ "#wiki-window"

# AJAX

getSearchResults = () ->
  $.ajax({
    type: 'GET',
    dataType: 'json',
    url: setWikiUrl(),
    success: (info) ->
      results = JSON.parse(info)
    })


# LOGIC

checkSearchMade = (input) ->
  searchMade = true if $searchInput

# FUNCTIONS


setWikiUrl = () ->
  "https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=" + encodeURIComponent($searchInput).toString() + "&utf8="

$searchButton.click ->
  setWikiUrl()
  getSearchResults()
  $searchInput = ""

# DOCUMENT READY

$ ->
