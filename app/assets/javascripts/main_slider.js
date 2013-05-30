// var stPt = 0, elToShow = 5; //showing 5 elements

// var $nav_wrapper = $('.menu');
// var $list = $nav_wrapper.find('.drag'); //get the list of div's
// var $copy_list = [];
// var copy_lgt = $list.length - elToShow;

// //call to set thumbnails based on what is set
// initNav();
// function initNav() {
//    var tmp;
//    for (var i = elToShow; i < $list.length; i++) {
//       tmp = $list.eq(i);
//       $copy_list.push(tmp.clone());
//       tmp.remove();
//    }
// }

// $('.menu').scroll (function () {
//     $list = $nav_wrapper.find('.drag'); //get the list of div's
        
//     //move the 1st element clone to the last position in copy_list
//     $copy_list.splice(copy_lgt, 0, $list.eq(0).clone() ); //array.splice(index,howmany,element1,.....,elementX)
    
//     //kill the 1st element in the div
//     $list.eq(0).fadeOut('slow').remove();
    
//     //add to the last
//     $nav_wrapper.append($copy_list.shift());
// });

// $('.menu').click (function () {
//     $list = $nav_wrapper.find('.drag'); //get the list of li's
        
//     //move the 1st element clone to the last position in copy_li
//     $copy_list.splice(0, 0, $list.eq(elToShow-1).clone()); //array.splice(index,howmany,element1,.....,elementX)
    
//     //kill the 1st element in the UL
//     $list.eq(elToShow-1).remove();
    
//     //add to the last
//     $nav_wrapper.prepend($copy_list.pop());

// });



