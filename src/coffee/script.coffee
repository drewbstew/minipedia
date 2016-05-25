# Code by DrewBStew

# GLOBAL VARIABLES

wikiUrl
searchMade

# SELECTORS

$searchButton = $ "#search-btn"
$searchBox = $ "#search-box"
$searchDiv = $ "#search-cont"
$rando = $ "#rando"
$wikiWindow = $ "#wiki-window"

#ANGULAR

app = angular.module 'wiki', []

app.controller 'SearchCtrl', () ->
  this.results = {}

  this.setUrl = (input) ->
    wikiUrl = "https://en.wikipedia.org/w/api.php?action=opensearch&search=" +
    input.toString()

# AJAX

getSearchResults = () ->
  $.ajax({
    type: 'GET',
    dataType: 'json',
    url: wikiURL,
    success: (info) ->
      results = JSON.parse(info)
    })


# LOGIC

checkSearchMade = (input) ->
  searchMade = true if input

# FUNCTIONS

$searchButton.click ->
  wiki.search()
  getSearchResults()



# DOCUMENT READY

$ ->
