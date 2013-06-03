delay = (ms, func) ->
  setTimeout func, ms

display = ->
  $(".current_content").animate
    opacity: 0, 'fast'
    ->
      $(this).css('background', 'url(/assets/slide_full_bg.png)')

      $(this).html("<%= escape_javascript render 'pages/display_slider_page', page: @page %>")
      $(this).animate
        opacity: 1
        ->
          scry = screen.height - 290
          $('.scrolled-container').css('height', scry)
          $('a').on 'click', ->
            window.location.hash = $(this).attr('href')
      $("#slide_plane").carousel()
      $("#slide_plane").carousel('pause')
      $('.content a').attr('data-remote', 'true')
      # $("#slide_plane").swiperight ->
        # $("#slide_plane").carousel('prev')
      # $("#slide_plane").swipeleft ->
        # $("#slide_plane").carousel('next')


delay 100, display
