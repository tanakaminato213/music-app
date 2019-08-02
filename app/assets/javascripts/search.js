$(document).on("input", ".hidden", function() {
var artists = function (query) {
  $.ajax({
      url: 'https://api.spotify.com/v1/search',
      headers: {
                'Authorization': 'Bearer ' + gon.token
              },
      data: {
          q: query,
          type: 'artist'
      },
      success: function (response) {
          resultsPlaceholder.innerHTML = template(response);
      }
    });
}
})


