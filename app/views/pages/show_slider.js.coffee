$defaultTime = (new Date()).getTime()

delay = (ms, func) ->
  setTimeout func, ms

ok_time = (time) ->
  if ($defaultTime + 200) <= time
    $defaultTime = time
    return true
  else
    return false


display = ->
  $('#stat_load').text('Loading')
  $(".current_content").animate
    opacity: 1, 1000
    ->
      # $(this).stop().css('background-size', 'contain')

      $(".current_content").html("<%= escape_javascript render 'pages/display_slider_page', page: @page %>")
      $('.header_navigate').animate
        opacity: 1
        300
      $(".current_content").animate
        opacity: 1, 1000
        ->
          $("#slide_plane").carousel
            interval: false
          scry = screen.height - 290
          # $('.scrolled-container').css('height', scry)
          # Slider
          $(".drag").draggable('destroy')


          $("#slide_plane").on 'swiperight', ->
            $("#slide_plane").stop().carousel('prev') if ok_time((new Date).getTime())


          $("#slide_plane").on 'swipeleft',  ->
            $("#slide_plane").stop().carousel('next') if ok_time((new Date).getTime())
            



          $('a').on 'click', ->
            window.location.hash = $(this).attr('href')
          $('.content a').attr('data-remote', 'true')
          
          # $('#slide_plane').touchSlider();

delay 100, display
$("<style type='text/css'> .hint .content a:link { color: #<%= @page.color %> !important;}  .hint .content a { color: #<%= @page.color %> !important; }  .hint .content a:visited { color: #<%= @page.color %> !important; } .hint .content a:focus { color: #<%= @page.color %> !important; } .hint .content a:hover { color: #<%= @page.color %> !important; }  </style>").appendTo("head");
$("<style type='text/css'> .header_btn {  background: rgb(45,65,76) !important; background: -moz-linear-gradient(top, #<%= @page.color %>, #<%= @page.another_color %> 100%) !important; background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,<%= @page.color %>), color-stop(100%,#<%= @page.another_color %>)) !important; background: -webkit-linear-gradient(top, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important;background: -o-linear-gradient(top, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important; background: -ms-linear-gradient(top, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important; background: linear-gradient(to bottom, #<%= @page.color %>,#<%= @page.another_color %> 100%) !important;    } </style>").appendTo("head")
$("<style type='text/css'> #header_title { color: #<%= @page.color %> !important; }</style>").appendTo("head")
$("<style type='text/css'> .nested_hint { border-color: #<%= @page.color %> !important; }</style>").appendTo("head")
$("<style type='text/css'> ol.carousel-indicators { position: fixed; } </style> ").appendTo("head")


if <%= @page.title.length %> > 10
  $("<style type='text/css'> #header_title { font-size: 22px !important; margin-top: 10px !important; }</style>").appendTo("head")
