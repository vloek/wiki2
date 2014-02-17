delay = (ms, func) ->
  setTimeout func, ms

display = ->
  $('#stat_load').text('Loading')
  # $(".current_content").animate
  #   opacity: 0, 2000
  #   ->

  # $(this).stop().css('background-size', 'contain')
  $('.header_navigate').animate
    opacity: 1
    300
  $('.current_content').css('background-size', 'contain')
  $('.current_content').css('-webkit-transition', 'initial')
  $('.current_content').css('background-image', 'url(/assets/slide_full_bg.png)')

  $(".current_content").animate
    opacity: 1, 1000
    ->
      $(".current_content").html('<%= escape_javascript render 'pages/display_page', page: @page %>')
      # $('.current_content').animate
      #   opacity: 1, 1000
      #   ->
      $('.scrolled').mCustomScrollbar()

  scry = screen.height - 250
  $('.scrolled').css('height', scry)
  $('a').on 'click', ->
    window.location.hash = $(this).attr('href')


delay 1000, display

# $("<style type='text/css'> .btn_color{ color:# !important; font-weight:bold;} </style>").appendTo("head");
$("<style type='text/css'> .toggle-content a:link { color: #<%= @page.color %> !important; .hint .content a { color: #<%= @page.color %> !important; .toggle-content a:visited { color: #<%= @page.color %> !important; } </style>").appendTo("head");

$("<style type='text/css'> .header_btn {  background: rgb(45,65,76) !important; background: -moz-linear-gradient(top, #<%= @page.color %>, #<%= @page.another_color %> 100%) !important; background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(45,65,76,1)), color-stop(100%,#<%= @page.another_color %>)) !important; background: -webkit-linear-gradient(top, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important;background: -o-linear-gradient(top, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important; background: -ms-linear-gradient(top, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important; background: linear-gradient(to bottom, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important;    } </style>").appendTo("head")

$("<style type='text/css'> #header_title { color: #<%= @page.color %> !important; }</style>").appendTo("head")


if <%= @page.title.length %> > 10
  $("<style type='text/css'> #header_title { font-size: 22px !important; margin-top: 10px !important; }</style>").appendTo("head")
