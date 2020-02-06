
var AddPostcode = function(doc) {

  getRegionForPostcode = function(postcode, callback) {
    var url = "https://api.postcodes.io/postcodes/" + postcode;
    var xmlHttp = new XMLHttpRequest()
    xmlHttp.open("GET", url, true)
    xmlHttp.onreadystatechange = function() {
      if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
        callback(JSON.parse(xmlHttp.response))
      }
    xmlHttp.send(null)
  }
  
  this.showRegion = function() {
    var outputElement = doc.querySelector("#output");
    // console.log(outputElement)
    var extractRegionAndAdd = function(response) {
      outputElement.innerText = response.result.region
    }
    getRegionForPostcode("E16LT", extractRegionAndAdd); 
  }
}


// callback controls the async by only calling function once the AJAX has completed.