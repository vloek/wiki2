// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require twitter/bootstrap
//= require ckeditor/init
//= require jquery.mobile-1.3.1.min
//= require_tree .


$("li.drag").draggable({
    revert:  function(dropped) {
         var $draggable = $(this),
             hasBeenDroppedBefore = $draggable.data('hasBeenDropped'),
             wasJustDropped = dropped && dropped[0].id == "droppable";
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



$(document).ready(function(){
    
if ( jQuery( '.shortcode-toggle').length ) {    
        
    jQuery( '.shortcode-toggle').each( function () {
            
        var toggleObj = jQuery(this);
            
        toggleObj.closedText = toggleObj.find( 'input[name="title_closed"]').attr( 'value' );
        toggleObj.openText = toggleObj.find( 'input[name="title_open"]').attr( 'value' );
            
        toggleObj.find( 'input[name="title_closed"]').remove();
        toggleObj.find( 'input[name="title_open"]').remove();
            
        toggleObj.find( 'h4.toggle-trigger a').click( function () {
            
            toggleObj.find( '.toggle-content').animate({ opacity: 'toggle', height: 'toggle' }, 300);
            toggleObj.toggleClass( 'open' ).toggleClass( 'closed' );
                
            if ( toggleObj.hasClass( 'open') ) {
                
                jQuery(this).text(toggleObj.openText);
                
            } // End IF Statement
                
            if ( toggleObj.hasClass( 'closed') ) {
                
                jQuery(this).text(toggleObj.closedText);
                
            } // End IF Statement
                
            return false;
            
        });
                    
    });
    
} // End IF Statement

});



function remove_fields(link) {
  $(link).closest(".fields").find("input[type=hidden]").val("true");
  $(link).closest(".fields").hide();
}


function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $('#nested_form').after(content.replace(regexp, new_id));
  $('.drago').draggable();
}

function add_fields_slide(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $('#nested_form_slide').after(content.replace(regexp, new_id));
  $('.drago').draggable();
}


$(function() {
  $.ajaxSetup({
    'beforeSend': function(xhr) {
      xhr.setRequestHeader("Accept", "text/javascript");
    }
  });

});