$(document).ready ->
<<<<<<< HEAD
  height = parseInt($(window).height()) - parseInt($('.navbar-inner').height() ) - 10
=======
  height = parseInt($(window).height()) - parseInt($('.navbar-inner').height())
  win_width = parseInt($(window).width())
>>>>>>> 45145e5b6398a6b22fc03b856488f445eef0cb5e
  objects = $('.to_hide')
  $('.menu').css('height', height)
  # animateCascadeTop()

  $.each objects, (i, el) ->
    topMarg = parseInt($(el).css('top')) + 1000   
    $(el).animate
<<<<<<< HEAD
      top: topMarg + 100 + (i * 75)
      1000 * (i)
    $($('.menu_item')[i]).animate
      top: topMarg + 240 + (i * 130)
      1000 * (i)
=======
      top: topMarg + 150 * (i + 1)
      1000 * (i+1)
    # $($('.menu_item')[i]).animate
    #   top: 20
    #   1000 * (i)
>>>>>>> 45145e5b6398a6b22fc03b856488f445eef0cb5e

    $(this).click ->
      $('.e_h').fadeOut(1000)
      $(this).removeClass('to_hide')
      animateCascadeTop()
      $(this).find('.slide').top = 0
      delay 5000, toTop(this)
  $('.e_h').fadeIn('slow')
  $('.menu_item').fadeTo(4000, 1)

  
    

  animateCascadeTop = ()->
    hideElements = $('li.to_hide')
    for x in hideElements
      $(x).animate
        left: -400
        top: -1000
        2000
      # $(x).top = '100px'
      $(x).css('-webkit-transform', 'rotateY(30deg)')
      $(x).css('transform', 'rotateY(30deg)')
    $('.menu_item').fadeOut('slow')


  toTop = (x)->
    $(x).find('.persp').css('top', '0px')
    $(x).find('.persp').css('bottom', '0px')
    $(x).find('.persp').css('left', '0px')
    $(x).find('.persp').css('width', win_width)
    $(x).find('.persp').css('height', height)
    $(x).find('.persp').css('-webkit-transform', 'rotateX(0)')
    $(x).find('.persp').css('transform', 'rotateX(0)')
    # $(x).find('.persp').css('position', 'fixed')

  fadeFromTop = (obj) ->
    topMarg = parseInt($(obj).css('top')) + 1000   
    $(obj).css('top', topMarg)

  showMenuElements = () ->
    $('.e_h').show()

  delay = (ms, func) -> setTimeout func, ms

  delay 6000, showMenuElements()


