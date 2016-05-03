# Code by DrewBStew

# SELECTORS

$searchButton = $ "#search-btn"
$searchBox = $ "#search-box"
$searchDiv = $ "#search-cont"
$rando = $ "#rando"
$wikiWindow = $ "#wiki-window"

#ANGULAR

app = angular.module 'wiki', []

app.controller 'wikiController',  () ->



# LOGIC

chosen = () ->
  # I have no idea what the fuck to do here yet, but it will gate the visibility
  # of the div that houses the wiki article. if no article is selected, it
  # doesn't show

# FUNCTIONS

loadWiki = (url) ->
  $wikiWindow.html "<object data: \'#{url}\' />"

$rando.click ->
  loadWiki "https://en.wikipedia.org/wiki/Special:Random"


# DOCUMENT READY
