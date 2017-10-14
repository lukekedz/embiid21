$(document).ready(function() {

  setInterval(function(){
    $.ajax({
      type: "GET",
      url: "/site/refresh_twitter_on_joel",
      success: function(data){
        $("#twitter-on-joel").empty();
        $("#twitter-on-joel").html(data);
      }
    });
  }, 60000);

  setInterval(function(){
    $.ajax({
      type: "GET",
      url: "/site/refresh_joel_on_twitter",
      success: function(data){
        $("#joel-on-twitter").empty();
        $("#joel-on-twitter").html(data);
      }
    });
  }, 300000);
});
