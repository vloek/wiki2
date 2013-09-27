// /*global Element */
// (function( window, document ) {
//   'use strict';

//   var keyboardAllowed = typeof Element !== 'undefined' && 'ALLOW_KEYBOARD_INPUT' in Element, // IE6 throws without typeof check

//     fn = (function() {
//       var fnMap = [
//         [
//           'requestFullscreen',
//           'exitFullscreen',
//           'fullscreenchange',
//           'fullscreen',
//           'fullscreenElement',
//           'fullscreenerror'
//         ],
//         [
//           'webkitRequestFullScreen',
//           'webkitCancelFullScreen',
//           'webkitfullscreenchange',
//           'webkitIsFullScreen',
//           'webkitCurrentFullScreenElement',
//           'webkitfullscreenerror'

//         ],
//         [
//           'mozRequestFullScreen',
//           'mozCancelFullScreen',
//           'mozfullscreenchange',
//           'mozFullScreen',
//           'mozFullScreenElement',
//           'mozfullscreenerror'
//         ]
//       ],
//       i = 0,
//       l = fnMap.length,
//       ret = {},
//       val,
//       valLength;

//       for ( ; i < l; i++ ) {
//         val = fnMap[ i ];
//         if ( val && val[1] in document ) {
//           for ( i = 0, valLength = val.length; i < valLength; i++ ) {
//             ret[ fnMap[0][ i ] ] = val[ i ];
//           }
//           return ret;
//         }
//       }
//       return false;
//     })(),

//     screenfull = {
//       isFullscreen: document[ fn.fullscreen ],
//       element: document[ fn.fullscreenElement ],

//       request: function( elem ) {
//         var request = fn.requestFullscreen;

//         elem = elem || document.documentElement;

//         // Work around Safari 5.1 bug: reports support for
//         // keyboard in fullscreen even though it doesn't.
//         // Browser sniffing, since the alternative with
//         // setTimeout is even worse
//         if ( /5\.1[\.\d]* Safari/.test( navigator.userAgent ) ) {
//           elem[ request ]();
//         } else {
//           elem[ request ]( keyboardAllowed && Element.ALLOW_KEYBOARD_INPUT );
//         }
//       },

//       exit: function() {
//         document[ fn.exitFullscreen ]();
//       },

//       toggle: function( elem ) {
//         if ( this.isFullscreen ) {
//           this.exit();
//         } else {
//           this.request( elem );
//         }
//       },

//       onchange: function() {},
//       onerror: function() {}
//     };

//   if ( !fn ) {
//     window.screenfull = null;
//     return;
//   }

//   document.addEventListener( fn.fullscreenchange, function( e ) {
//     screenfull.isFullscreen = document[ fn.fullscreen ];
//     screenfull.element = document[ fn.fullscreenElement ];
//     screenfull.onchange.call( screenfull, e );
//   });

//   document.addEventListener( fn.fullscreenerror, function( e ) {
//     screenfull.onerror.call( screenfull, e );
//   });

//   window.screenfull = screenfull;

// })( window, document );


// $('#toggle').click(function() {
//   screenfull.toggle( $('#container')[0] );
// });


// var fsButton = document.getElementById('toggle'),
//     container = document.getElementById('container');


// if (window.fullScreenApi.supportsFullScreen) {
//     fsButton.style.display = 'block';

//     fsButton.addEventListener('click', function() {
//         if (fsButton.className == 'fs-off') {
//             window.fullScreenApi.requestFullScreen(container);
//         } else {
//             window.fullScreenApi.cancelFullScreen(container);
//         }
//     }, true);

//     container.addEventListener(fullScreenApi.fullScreenEventName, function() {
//         if (fullScreenApi.isFullScreen()) {
//             container.style.width = container.style.height = '100%';
//             fsButton.className = 'fs-on';
//         } else {
//             fsButton.className = 'fs-off';
//         }
//     }, true);
// } else {
//     // no fullscreen support - do nothing
// }


document.cancelFullScreen = document.webkitExitFullscreen || document.mozCancelFullScreen || document.exitFullscreen;

var elem = document.querySelector(document.webkitExitFullscreen ? "#fs" : "#container");


function toggleFS(el) {
  if (el.webkitEnterFullScreen) {
    el.webkitEnterFullScreen();
  } else {
    if (el.mozRequestFullScreen) {
      el.mozRequestFullScreen();
    } else {
      el.requestFullscreen();
    }
  }

  el.ondblclick = exitFullscreen;
}

function onFullScreenEnter() {
  console.log("Entered fullscreen!");
  elem.onwebkitfullscreenchange = onFullScreenExit;
  elem.onmozfullscreenchange = onFullScreenExit;
};

// Called whenever the browser exits fullscreen.
function onFullScreenExit() {
  console.log("Exited fullscreen!");
};

// Note: FF nightly needs about:config full-screen-api.enabled set to true.
function enterFullscreen() {
  console.log("enterFullscreen()");
  elem.onwebkitfullscreenchange = onFullScreenEnter;
  elem.onmozfullscreenchange = onFullScreenEnter;
  elem.onfullscreenchange = onFullScreenEnter;
  if (elem.webkitRequestFullscreen) {
    elem.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
  } else {
    if (elem.mozRequestFullScreen) {
      elem.mozRequestFullScreen();
    } else {
      elem.requestFullscreen();
    }
  }
  document.getElementById('toggle').onclick = exitFullscreen;
}

function exitFullscreen() {
  console.log("exitFullscreen()");
  document.cancelFullScreen();
  document.getElementById('toggle').onclick = enterFullscreen;
}
