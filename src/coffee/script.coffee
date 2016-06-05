# Code by DrewBStew

# SELECTORS

$searchButton = $ "#search-btn"
$searchInput = $("#search-input")
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
  input = $searchInput.val()
  "https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=" + encodeURIComponent(input) + "&utf8="

$searchButton.click ->
  setWikiUrl()
  getSearchResults()
  $searchInput = ""
