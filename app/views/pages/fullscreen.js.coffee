$('.current_content').animate
  opacity: 1
  500
  ->
    $('.current_content').html("<div class='content_d'><%= escape_javascript render 'pages/display_page_full', page: @page %></div>")
    $('#btn_return').animate
      opacity: 1
      ->
        $('#btn_return').css('display', 'block')
    $('a').bind 'click', ()->
      window.location.hash = $(this).attr('href')

    $("#slider_full").carousel()
    $('.content a').attr('data-remote', 'true')
    # $("#slider_full").swiperight ->
    #     $("#slider_full").carousel('prev')
    # $("#slider_full").swipeleft ->
    #   $("#slider_full").carousel('next')


    $('a.hide_me').bind 'click', ()->
      $(this).parent().parent().first().toggleClass('closed open')
      window.location.hash = $(this).attr('href')
    $('#header_title').html("<%= @page.parent.title %>") 

    $("<style type='text/css'> .header_btn {  background: rgb(45,65,76) !important; background: -moz-linear-gradient(top, #<%= @page.parent.color %>, #<%= @page.parent.another_color %> 100%) !important; background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(45,65,76,1)), color-stop(100%,#<%= @page.parent.another_color %>)) !important; background: -webkit-linear-gradient(top, #<%= @page.parent.color %>,#<%= @page.parent.another_color %> 100%) !important;background: -o-linear-gradient(top, #<%= @page.parent.color %>,#<%= @page.parent.another_color %> 100%) !important; background: -ms-linear-gradient(top, #<%= @page.parent.color %>,#<%= @page.parent.another_color %> 100%) !important; background: linear-gradient(to bottom, #<%= @page.parent.color %>,#<%= @page.parent.another_color %> 100%) !important;    } </style>").appendTo("head")

    $("<style type='text/css'> #header_title { color: #<%= @page.parent.color %> !important; }</style>").appendTo("head")
    $("<style type='text/css'> .current_content { box-shadow: #<%= @page.parent.color %> 0px 0px 23px inset !important; }</style>").appendTo("head")


