jQuery ->
  $('.slide2d').on 'click', ->
    slide        = $(this).find('.slide .persp')
    link         = $(this).find('a.block_a')
    title_text   = $(this).find('.title span').text()
    window_width  = $(window).width()
    window_height = $(window).height()


    $('.wiki2d').animate
      opacity: 0
      1500
      ->
        $('.wiki2d').css('top', '55px')
        $('.wiki2d').css('left', '0px')
        $('.wiki2d').css('position', 'fixed')
        c = $(window).height() - 55
        $('.wiki2d').css('height', c)
        $('.wiki2d').css('width', '100%')
        $('.wiki2d').css('background-size', 'contain')
        $('.wiki2d').css('background-image', 'url(/assets/slide_full_bg.png)')
        $('.wiki2d').css('border', $(slide).css('border'))
        $('.wiki2d').css('box-shadow', $(slide).css('box-shadow'))
        $('.wiki2d').addClass('current_content')
        setTimeout(display_return(title_text, 1), 1)
        
        link.click()
        $('.menu-margin-top').remove()
        $('#slide_plane').css('display', 'table-row')

        $('.wiki2d').animate
          opacity: 1
          1000
          ->
            $('#slide_plane').css('display', 'table-row')




  display_return = (title, parent_id) ->
    window.scrollTo(0,0)
    $('#header_title').html(title)
    $('.header_btn').animate
      opacity: 1
      300
    $('.header_return').css('display', 'table-cell')
    $('.header_btn').css('display', 'table-cell')
    $('.header_return').css('id', parent_id)


    
  change_path = (new_path, remote) ->
    $('a#btn_return').stop().attr('href', new_path)
    $('a#btn_return').stop().attr('data-remote', remote)
    $('a#btn_return').stop().animate
      opacity: 1
      1500
      ->
        $('a#btn_return').css('display', 'block')

