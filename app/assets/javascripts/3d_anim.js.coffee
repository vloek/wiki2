jQuery ->
  $(document).ready ->
    marginSlide = $(document).width() * 0.3
    marginMenuItem = $(document).width() * 0.1
    $('.menu_item').css('margin-left', marginMenuItem)
    #$('.slide3d').css('margin-right', marginSlide)
    setProportion('.slide3d')

  $(window).resize ->
    # setProportion('.slide3d')

  $(window).on 'orientationchange', ->
    # setProportion('.slide3d')


setProportion = (selector)->
  doc_height  = $(document).height()
  doc_width   = $(document).width()
  count       = $(selector).size()  

  slide_height = doc_height / count * 1.5 
  slide_width  = doc_width  / 3#+ 130

  $(selector).width(slide_width).height(slide_height)



$(document).ready ->

  height = parseInt($(window).height()) - parseInt($('.navbar-inner').height())
  win_width = parseInt($(window).width())
  objects = $('.to_hide')
  # $('.menu').css('height', height)
  # animateCascadeTop()

  $.each objects, (i, el) ->
  #   topMarg = parseInt($(el).css('top')) + 1000   
  #   $(el).animate
  #     top: topMarg + 100 + (i * 75)
  #     1000 * (i)

  #     top: topMarg + 150 * (i + 1)
  #     1000 * (i+1)
    # $($('.menu_item')[i]).animate
    #   top: 20
    #   1000 * (i)

    $(this).click ->
      # $('.e_h') #fadeOut(1000)
      $(this).removeClass('to_hide')
      $(this).closest('.perspectiva').removeClass('to_remove')
      animateCascadeTop(this)
      $(this).off('click')

      # slide = $(this).find('.slide3d')
      # delay 5000, toTop(this)

  # $('.e_h').fadeIn('slow')
  # $('.menu_item').fadeTo(4000, 1)

  
    

  animateCascadeTop = (target)->
    hideElements = $('.to_hide')
    $(hideElements).animate
      opacity: 0
      'slow'
      ->
        $('.to_remove').animate
          opacity: 0
          'slow'
        $('.to_remove').remove()
        toTop(target)
    $('.menu_item').animate 
      opacity: 0
    $('.to_hide').animate
      opacity: 0
      2000    
    # $(hideElements).remove()
    # for x in hideElements
    #   $(x).animate
    #     right: 500
    #     top: -1000
    #     1000
    #     ->
    #   # $(x).top = '100px'
    #   $(x).css('-webkit-transform', 'rotateX(30deg)')
    #   $(x).css('transform', 'rotateY(10deg)')
        




  toTop = (x)->
    # $(x).css('top', -$(x).offset().top + 55)
    # $(x).css('bottom', '0px')
    # $(x).css('left', -$(x).offset().left)
    # $(x).css('z-index', -100)
    # $(x).css('top', $(x).offset().top)
    # $(x).css('left', $(x).offset().left)

    $(x)
      .css
        position: 'fixed'
      .removeClass('slide3d')
    $(x)
      .css('-webkit-transform', 'rotateX(0)')
      .css('transform', 'rotateX(0)')
      .closest('.perspectiva').css('-webkit-perspective', 'none')

    # $('.current_content').css('background-image', 'url(/assets/slide_full_bg.png)')

    # $(x)
    #   .animate
    #     left: 0
    #     top: 0
    #     width: win_width
    #     height: height
    #     3200
    $(x).css('left', 0)
    $(x).css('top', 55)
    $(x)
      .css('width', win_width)
      .css('height', height)

    $(x)
      .addClass('current_content')
      .closest('.perspectiva').find('a.block_a').click()
      # .css('z-index', 100000)
    # $(x).css('background-size', 'contain')
      # opacity: 1
    $(x)
      .find('.block_a').click()



    # $('.perspectiva').css('z-index', -1000)
    # $('.slide_row').css('z-index', -1000)
    # $(x).find('.persp').css('position', 'fixed')

  fadeFromTop = (obj) ->
    topMarg = parseInt($(obj).css('top')) + 1000   
    $(obj).css('top', topMarg)

  showMenuElements = () ->
    $('.e_h').show()

  delay = (ms, func) -> setTimeout func, ms

  delay 6000, showMenuElements()


