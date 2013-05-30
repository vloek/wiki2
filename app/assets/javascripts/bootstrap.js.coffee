jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('li.drag').draggable({ axis: 'y'})


$(document).ready ->
  $('body').css({opacity:0}).delay(2).animate({opacity:1})
  $('a').on 'click', ->
    window.location.hash = $(this).attr('href')


$(document).ready ->
  # $('.sortable').nestedSortable(
  #   handle: 'div',
  #   items: 'li',
  #   toleranceElement: '> div',
  #   maxLevels: 1
  # )
  $('.menu').jcarousel({ vertical: true, scroll: 3})
