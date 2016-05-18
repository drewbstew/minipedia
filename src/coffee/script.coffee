# Code by DrewBStew

# GLOBAL VARIABLES

results;
wikiUrl;

# SELECTORS

$searchButton = $ "#search-btn"
$searchBox = $ "#search-box"
$searchDiv = $ "#search-cont"
$rando = $ "#rando"
$wikiWindow = $ "#wiki-window"

#ANGULAR

app = angular.module 'wiki', []

app.controller 'wikiController',  () ->
  this.search = results;

# AJAX

getSearchResults = () ->
  $.ajax({
    type: 'GET',
    dataType: 'json',
    url: getWikiUrl,
    success: (info) ->
      results = JSON.parse(info)
    })

# LOGIC

searchMade = (input) ->
  return input

# FUNCTIONS

getWikiUrl = (search) ->
  wikiUrl = "https://en.wikipedia.org/w/api.php?action=opensearch&search=" +
  search.toString()

$rando.click ->
  loadWiki "https://en.wikipedia.org/wiki/Special:Random"

# DOCUMENT READY

$ ->
