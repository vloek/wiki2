jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('li.drag').draggable({ axis: 'y'})
  if (1.7 / ($(document).width() / $(document).height())) == 1 
    zoom_coefficient = 1
  else 
    zoom_coefficient = (1.7 / ($(document).width() / $(document).height())) - 0.2
  if !(/mobile/i.test(navigator.userAgent))
    $("<style type='text/css'> .container_normative {  zoom: #{zoom_coefficient}; -moz-transform: scale(#{zoom_coefficient })}</style>").appendTo('head')
    $("<style type='text/css'> .header_navigate {  zoom: #{zoom_coefficient + 0.1}; -moz-transform: scale(#{zoom_coefficient })}</style>").appendTo('head')
    $("<style type='text/css'> #btn_return {  zoom: #{zoom_coefficient}; -moz-transform: scale(#{zoom_coefficient })}</style>").appendTo('head')
    $("<style type='text/css'> .menu_item {  zoom: #{zoom_coefficient * 1.2 }; -moz-transform: scale(#{zoom_coefficient  * 0.8})}</style>").appendTo('head')
    $("<style type='text/css'> .scrolled-container {  zoom: #{zoom_coefficient + 0.03 }; -moz-transform: scale(#{zoom_coefficient * 1.2 })}</style>").appendTo('head')
    # $("<style type='text/css'> .scrolled {  zoom: #{zoom_coefficient}; -moz-transform: scale(#{zoom_coefficient })}</style>").appendTo('head')
    $("<style type='text/css'> .content_d {  -webkit-transform: scale(#{zoom_coefficient  }); -moz-transform: scale(#{zoom_coefficient * 0.8}); margin-top: 70px; }  #right_content { right: -180px !important;} body { font-size: 22px !important;} </style>").appendTo('head')
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

