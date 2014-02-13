jQuery ->
  $(document).ready ->
    setProportion('.slide3d')

  $(window).resize ->
    setProportion('.slide3d')

  $(window).on 'orientationchange', ->
    setProportion('.slide3d')


setProportion = (selector)->
  doc_height  = $(document).height()
  doc_width   = $(document).width()
  count = $(selector).size()  

  slide_height = doc_height / count  
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
      animateCascadeTop()
      # slide = $(this).find('.slide3d')
      delay 5000, toTop(this)
  # $('.e_h').fadeIn('slow')
  # $('.menu_item').fadeTo(4000, 1)

  
    

  animateCascadeTop = ()->
    hideElements = $('.to_hide')
    for x in hideElements
      $(x).animate
        right: 500
        top: -1000
        2000
      # $(x).top = '100px'
      $(x).css('-webkit-transform', 'rotateX(30deg)')
      $(x).css('transform', 'rotateY(10deg)')
    $('.menu_item').animate 
      opacity: 0


  toTop = (x)->
    # $(x).css('top', -$(x).offset().top + 55)
    # $(x).css('bottom', '0px')
    # $(x).css('left', -$(x).offset().left)
    $(x)
      .offset
        left: 0
        top: 55
      .css
        position: 'fixed'
      .removeClass('slide3d')
    $(x).css('width', win_width)
    $(x).css('height', height)
    $(x).css('-webkit-transform', 'rotateX(0)')
    $(x).css('transform', 'rotateX(0)')
    $(x)
      .addClass('current_content')
      .closest('.slide_row').find('a.block_a').click()
      .css('z-index', 1000)
    $('.perspectiva').css('z-index', -1000)
    # $('.slide_row').css('z-index', -1000)
    # $(x).find('.persp').css('position', 'fixed')

  fadeFromTop = (obj) ->
    topMarg = parseInt($(obj).css('top')) + 1000   
    $(obj).css('top', topMarg)

  showMenuElements = () ->
    $('.e_h').show()

  delay = (ms, func) -> setTimeout func, ms

  delay 6000, showMenuElements()


