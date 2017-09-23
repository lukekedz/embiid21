$(document).ready(function() {

  setInterval(function(){
    var tweetsOnJoelHiddenLi = $(".tweets-on-joel");
    var tweetsOnJoel         = [];

    for (var i = 0; i < tweetsOnJoelHiddenLi.length; i++) {
      tweetsOnJoel.push(tweetsOnJoelHiddenLi[i].innerHTML)
    }

    $.ajax({
      type: "GET",
      url: "/site/refresh_twitter",
      data: { tweets_on_joel: tweetsOnJoel },
      success: function(data){
        $("#twitter-on-joel").empty();
        $("#twitter-on-joel").html(data);
      }
    });
  }, 60000);
});
