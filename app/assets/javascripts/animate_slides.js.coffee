jQuery ->
  $('#btn_return').click ->
    $(this).animate
      opacity: 0


  $('.drag').click ->
    drag = $(this)
    title_text = $(this).find('.title span').text()
    fog_color  = $(this).find('.persp').attr('background-color')
    shadow_color = 'inset 0 0 23px '+ fog_color


    $(this).find('.persp').css('-webkit-transform', 'rotateX(0)')
    $(this).css('transform', 'perspective(1100px) rotateX(0)')

    sss = jQuery($(this).find('.persp')).offset()
    presp = $(this).find('.persp')


    $(this).css('left', sss.left)
    $(this).css('top', sss.top)
    $(this).css('position', 'fixed')
    
    $(this).find('.persp').css('z-index', '1000')
    $(this).removeClass('to_hide')
    $('.menu_item').fadeOut('slow')
    $('.to_hide').fadeOut('slow')

    $(this).animate
      top: 110, 'margin-top': 60, left: 0, 'margin-left': 0
      1700
      # ->
    scrx = screen.width 
    scry = screen.height - 70
    $(this).find('.persp').animate
      width: scrx, height: scry, zero: 0, r: 0, top: 0, opacity: 1, left: 0, border: 0
      2600

       ->
        # $(this).animate({boxShadow: shadow_color})
        display_return(title_text, 1)
    $(this).find('.slide').css('right', 'auto')
    $(this).find('.slide').css('left', '0')
    $(this).find('.slide').css('width', '0')


    $('.drag').draggable('destroy')
    $('li').removeClass('drag ui-draggable')
    $(this).css('z-index', '1200')
    $(this).off('click')
    $(this).find('.persp').addClass('current_content')

display_return = (title, parent_id) ->
  window.scrollTo(0,0)
  $('#header_title').html(title)
  $('.header_btn').animate
    opacity: 1
    1500
  $('.header_return').animate
    opacity: 1
    1000
    ->
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


