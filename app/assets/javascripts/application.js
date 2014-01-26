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
// require jquery.ui.touch-punch.min
//= require twitter/bootstrap
//= require jquery.event.move
//= require jquery.event.swipe
//= require date.format
//= require drago
//= require pages
//= require jscolor
//= require ckeditor/init
//= require bootstrap
//= require jquery.mCustomScrollbar.min

//= require main_animate
//= require_tree .




function has3d(){
   var el, has3d;
   
   /* Create a new element */
   el = document.createElement('p');

   /* Apply a transform */
   el.style['transform'] = 'matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)';

   /* 
   Add it to the body to get the computed style (for Opera mostly).
   Since it's empty, it shouldn't interfere with layout in modern browsers. 
   */
   document.body.insertBefore(el, document.body.lastChild);
   
   /* Get the computed value */
   has3d = window.getComputedStyle(el).getPropertyValue('transform');

   /* 
   If it's not undefined, tell us whether it is 'none'.
   Otherwise, return false.
   */
   if( has3d !== undefined ){
      return has3d !== 'none';
   } else {
      return false;
   }
}






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


  var $ = document; // shortcut
  var cssId = 'myCss';  // you could encode the css path itself to generate id..
  if (has3d() == 'true')
  {
      var head  = $.getElementsByTagName('head')[0];
      var link  = $.createElement('link');
      link.id   = cssId;
      link.rel  = 'stylesheet';
      link.type = 'text/css';
      link.href = '/css/menu3d.css';
      link.media = 'all';
      head.appendChild(link);
  }

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

function getURLParameter(name) {
  return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null;
}


