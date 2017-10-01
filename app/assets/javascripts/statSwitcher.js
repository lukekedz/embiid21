$(document).ready(function() {
  // TODO: update current to season stats or latest game played
  var displayedGameId = "#game-5";
  var displayedLogoId = "#game-load-logo-4";

  swapGame = function(id) {
    var gameId = "#game-" + id;
    var logoId = "#game-load-logo-" + (id -1);

    // displays stats, video, etc. for selected game
    $(displayedGameId).hide();
    $(gameId).show();
    displayedGameId = gameId;

    // animation of team logo schedule nav
    // flip to hide logo & return to text
    $(displayedLogoId + " #logo").hide().css('background-color', 'white');
    $(displayedLogoId + " #text").show();

    // flip to display logo
    $(logoId + " #text").hide();
    $(logoId + " #logo").show().css('background-color', '#D3D3D3');
    $(logoId).addClass("animated flipInY");
    displayedLogoId = logoId;
    
    setTimeout(function(){
      $(logoId).removeClass("animated flipInY");
    }, 1000);
  };

});
