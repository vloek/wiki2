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
    $("#slider_full").swiperight ->
        $("#slider_full").carousel('prev')
    $("#slider_full").swipeleft ->
      $("#slider_full").carousel('next')


    $('a.hide_me').bind 'click', ()->
      $(this).parent().parent().first().toggleClass('closed open')
      window.location.hash = $(this).attr('href')
