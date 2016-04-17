# Code by DrewBStew

# SELECTORS

$searchButton = $ "#search-btn"
$searchBox = $ "#search-box"
$searchDiv = $ ".search"
$rando = $ "#rando"

setRandoWidth = () ->
  searchDivWidth = $searchDiv.width()
  $rando.width(searchDivWidth)

$ ->
  setRandoWidth()
