//several sources modified fo rmy needs and understanding: http://www.acuriousanimal.com/2011/11/02/using-youtube-api-to-embed-videos-on-your-web-site.html
//https://github.com/FriesFlorian/viralvideos


function tplawesome(e, t) { res = e; for (var n = 0; n < t.length; n++) { res = res.replace(/\{\{(.*?)\}\}/g, function (e, r) { return t[n][r] }) } return res }

function keyWordsearch(){
  gapi.client.setApiKey('AIzaSyDxOjiqPIf8Pl6uGBeMD7Y-7Eed1cb2BBU');
  gapi.client.load('youtube', 'v3', function(){
  makeRequest();
});
}
function makeRequest(){

    var q = $('#query').val();
    var request = gapi.client.youtube.search.list({
      q: q,
      part: 'snippet',
      type: "video",
      maxResults: 2,
      order: "viewCount",
      publishedAfter: "2015-01-01T00:00:00Z"
});
    request.execute(function(response)  {
      $('#results').empty()
            var srchItems = response.result.items;
            $.each(srchItems, function(i, item){
            
            for (var i = 0; i < response.items.length; i++) {
              var videoid = "http://www.youtube.com/embed/"+item.id.videoId;
              console.log("Latest ID: '" + videoid + "'");
              var video = " '" +item.snippet.title + "'<br><li><iframe width='200' height='200' src='" + videoid + "' frameborder='0' allowfullscreen></iframe></li>";

              $('#results').html(video);   
            }           
            });  
    });
  resetVideoHeight();  
}

function resetVideoHeight() {
  $(".video").css("height", $("#results").width() * 9 / 16);
}
