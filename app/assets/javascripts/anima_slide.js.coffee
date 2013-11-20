$(document).ready ->
  height = parseInt($(window).height()) - parseInt($('.navbar-inner').height())
  win_width = parseInt($(window).width())
  objects = $('.to_hide')
  $('.menu').css('height', height)
  # animateCascadeTop()


  $.each objects, (i, el) ->
    topMarg = parseInt($(el).css('top')) + 1000   
    $(el).animate
      top: topMarg + 150 * (i + 1)
      1000 * (i+1)
    # $($('.menu_item')[i]).animate
    #   top: 20
    #   1000 * (i)

    $(this).click ->
      $('.e_h').fadeOut(1000)
      $(this).removeClass('to_hide')
      animateCascadeTop()
      $(this).find('.slide').top = 0
      delay 5000, toTop(this)

  
    

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


