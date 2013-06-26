jQuery ->
  $('#btn_return').click ->
    $(this).animate
      opacity: 0


  $('.drag').click ->
    # Variable
    drag         = $(this)
    title_text   = $(this).find('.title span').text()
    prp          = $(this).find('.persp')
    fog_color    = prp.attr('background-color')
    shadow_color = 'inset 0 0 23px '+ fog_color
    slide_clck   = $(this).find('.slide')
    mt           = prp.position().top

    # Hide btn_close and remove href attr
    $(this).find('.slide').parent('a').attr('href', '')
    $('.btn_main_close').hide()




    $(this).find('.persp').css('margin-top', 175)
    $(this).find('.persp').css('margin-left', -355)
    # Animate rotate
    $(this).find('.persp').css('-webkit-transform','rotateX(0deg)')
    $(this).find('.persp').css('-moz-transform','rotateX(0deg)')
    $(this).find('.persp').css('-ms-transform','rotateX(0deg)')
    $(this).find('.persp').css('-o-transform','rotateX(0deg)')
    $(this).find('.persp').css('transform','rotateX(0deg)')
    $(this).find('.persp').animate
      borderSpacing: 50
      2100
      ->
        $(this).css('-webkit-transition-duration','0').css('-transition-duration','0')

    sss       = jQuery($(this).find('.persp')).offset()
    presp     = $(this).find('.persp')
    slide_ofs = jQuery($(this).find('.slide')).offset()

    # $(this).animate 
    #   left: sss.left, top: sss.top
    #   3000

    
    $(this).find('.persp').css('z-index', '1000')
    $(this).removeClass('to_hide')
    # $('.menu_item').hide()
    $(this).find('.menu_item').animate 
      opacity: 0
      1500
      ->
        $(this).hide()
    # $('.to_hide').fadeOut('slow')
    $('.to_hide').animate 
      opacity: 0, height: 0
      1500

    # $(this).animate
    #   'margin-top': 56, left: 0, 'margin-left': 0, textIndent: 0, top: 160
    #   1200

     
    scrx = $(window).width() 
    scry = $(window).height() - 55
    # $(this).find('.slide').animate 
    #   left: 0


    $(this).find('.persp')
      .animate
        width: scrx, height: scry, zero: 0, r: 0, marginLeft: -slide_ofs.left, marginTop: 55, border: 0, left: 0, top: 0
        1800
        ->
          $(this)
            .animate
              opacity: 0
              2000
              ->
                if $('#stat_load').text() == "No"
                  drag.find('a.block_a').click()
                  $('#stat_load').text('Loading')
                $(this).css('background-size', 'contain')
                $(this).css('background-image', 'url(/assets/slide_full_bg.png)')
                setTimeout(display_return(title_text, 1), 3500)
                $(this).css('top', 55)
            # .animate
            #   1000
            #   ->
            #     
                
          # $(this).css('top', 55)

          # $(this).css('position', 'fixed').animate 
          #   marginTop: 0
          #   2400

          # $(this).css('left', 0)
          # $(this).css('margin-left', 0)
          # $(this).css('margin-top', 0)
          # slide_clck.css('left', '0')
          slide_clck.css('width', '0')
          slide_clck.css('right', 'auto')
          slide_clck.css('-webkit-perspective', '0')

      .animate
        boxShadow: shadow_color



    $('.drag').draggable('destroy')
    $('li').removeClass('drag ui-draggable')
    $(this).css('z-index', '1200')
    $(this).off('click')
    $(this).find('.persp').addClass('current_content')
    # $(this).find('.slide').css('right', 'auto')
    
    # $(this).find('.slide').css('margin-left', '0')
    $(this).find('.slide').css('cursor', 'auto')
    # $(this).find('.slide').animate
    #   top: -130




  


display_return = (title, parent_id) ->
  window.scrollTo(0,0)
  $('#header_title').html(title)
  $('.header_btn').animate
    opacity: 1
    1500
  # $('.header_return').animate
  #   opacity: 1
  #   1000
  #   ->
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


