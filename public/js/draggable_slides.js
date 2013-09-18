$("li.drag").draggable({
    revert:  function(dropped) {
         var $draggable = $(this),
             hasBeenDroppedBefore = $draggable.data('hasBeenDropped'),
             wasJustDropped = dropped && dropped[0].id == "droppable";
         // $draggable.find('.block_a').click();
         $draggable.click();
             
         if(wasJustDropped) {
             // don't revert, it's in the droppable
             return false;
         } else {
             if (hasBeenDroppedBefore) {
                 // don't rely on the built in revert, do it yourself
                 $draggable.animate({ top: 0, left: 0 }, 'slow');

                 return false;
             } else {
                 // just let the built in revert work, although really, you could animate to 0,0 here as well
                 return true;
             }
         }

    }
});