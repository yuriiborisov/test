
$(function(){
    
    "use strict";
    
    $('#info').click(function(){
      
        $('#info_box').toggleClass('open');
      });

    $('#main_nav li').click(function(){

        $('.navigate').toggleClass('selected');
      });
    
});

var myElement = document.getElementsByClassName('header');

var mc = new Hammer(myElement);

//enable all directions
mc.get('swipe').set({
  direction: Hammer.DIRECTION_ALL,
  threshold: 1,
  velocity:0.1
});

// listen to events...
mc.on("swipeleft", function(ev) {
  myElement.hide();
});