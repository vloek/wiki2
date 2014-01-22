jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('li.drag').draggable({ axis: 'y'})

  zoom_coefficient = (1.7 / ($(window).width() / $(window).height())) - 0.02
  if !(/mobile/i.test(navigator.userAgent))
    $("<style type='text/css'> .btn_return {  zoom: #{zoom_coefficient}; -moz-transform: scale(#{zoom_coefficient })}</style>").appendTo('head')
    $("<style type='text/css'> .menu_item {  zoom: #{zoom_coefficient - 0.1}; -moz-transform: scale(#{zoom_coefficient  - 0.1})}</style>").appendTo('head')
    $("<style type='text/css'> .scrolled-container {  zoom: #{zoom_coefficient}; -moz-transform: scale(#{zoom_coefficient })}</style>").appendTo('head')
    $("<style type='text/css'> .scrolled {  zoom: #{zoom_coefficient}; -moz-transform: scale(#{zoom_coefficient })}</style>").appendTo('head')
    $("<style type='text/css'> .content_d {  zoom: #{zoom_coefficient - 0.05}; -moz-transform: scale(#{zoom_coefficient - 0.1})}</style>").appendTo('head')
date_display = ->
  $('.time').html new Date().format("dd/mm/yyyy")

$(document).ready ->
  $('body').css({opacity:0}).delay(2).animate({opacity:1})

  $('a').on 'click', ->
    window.location.hash = $(this).attr('href')
  setInterval date_display, 5000
$(window).resize ->
  $('.current_content').width($(this).width())
  c = $(this).height() - 55
  $('.current_content').height(c)


$(document).ready ->
  # $('.sortable').nestedSortable(
  #   handle: 'div',
  #   items: 'li',
  #   toleranceElement: '> div',
  #   maxLevels: 1
  # )
  # $('.menu').jcarousel({ vertical: true, scroll: 3})

