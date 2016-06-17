# Code by DrewBStew

# SELECTORS

$searchButton = $ "#search-btn"
$searchInput = $("#search-input")
$searchDiv = $ "#search-cont"
$rando = $ "#rando"
$wikiWindow = $ "#wiki-window"

# AJAX & CORS

createCORSRequest = () ->
  url = setWikiUrl()
  method = 'GET'
  xhr = new XMLHttpRequest();
  if "withCredentials" in xhr
    xhr.open(method, url, true);
  else if typeof XDomainRequest != "undefined"
    xhr = new XDomainRequest();
    xhr.open(method, url);
  else
    xhr = null;

getSearchResults = () ->
  wikiUrl = setWikiUrl()
  $.ajax({
    xhrFields:
      withCredentials: true
    crossDomain: true
    type: 'GET',
    dataType: 'json',
    headers:
      'Api-User-Agent': 'Example/1.0'
    url: wikiUrl,
    success: (info) ->
      results = JSON.parse(info)
    })


# LOGIC

checkSearchMade = (input) ->
  searchMade = true if $searchInput

# FUNCTIONS

setWikiUrl = () ->
  input = $searchInput.val()
  "https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=" + encodeURIComponent(input) + "&utf8=&callback=?"

$searchButton.click ->
  setWikiUrl()
  getSearchResults()
  $searchInput = ""
