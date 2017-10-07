$(document).ready(function() {
  var initialId        = $(".initially-displayed-game")[0].innerText;
  var displayedGame    = "#game-" + initialId
  var displayedNavText = "#nav-text-" + initialId
  var displayedNavLogo = "#nav-logo-" + initialId

  swapGame = function(id) {
    var gameId = "#game-" + id;
    var textId = "#nav-text-" + id;
    var logoId = "#nav-logo-" + id;

    // switch the stats, video 
    $(displayedGame).hide();
    $(gameId).show();
    displayedGame = gameId;

    // hide currently-selected logo & display text
    $(displayedNavLogo).hide();
    $(displayedNavText).show();

    // flip to selected logo & hide text
    $(textId).hide();
    $(logoId).show();
    $(logoId).addClass("animated flipInY");

    displayedNavText = textId;
    displayedNavLogo = logoId;

    setTimeout(function(){
      $(logoId).removeClass("animated flipInY");
    }, 1000);
  };

});
