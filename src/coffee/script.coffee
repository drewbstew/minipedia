# Code by DrewBStew

# SELECTORS

$searchButton = $ "#search-btn"
$searchBox = $ "#search-box"
$searchDiv = $ "#search-cont"
$rando = $ "#rando"
$wikiWindow = $ "#wiki-window"

# FUNCTIONS

loadWiki = (url) ->
  $wikiWindow.html "<object data: \'#{url}\' />"

$rando.click ->
  loadWiki "https://en.wikipedia.org/wiki/Special:Random"

# DOCUMENT READY
