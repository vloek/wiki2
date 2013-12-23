$(document).ready ->
  class Slide
    constructor: (@id, @i) ->
      @id = "#" + @id
      tmp = @id # fix cache bug
      # alert(@id)
      $(tmp).click ->
        $('.e_h').fadeOut(1000)
        # alert(tmp)
        $(tmp).removeClass('to_hide')
        animateCascadeTop()
        delay 5000, toTop(tmp)

    load: () ->
      topMarg = parseInt($(@id).css('top')) + 1060   

      $(@id).animate 
        top: topMarg + 100 + (@i * 75)
        1000 * @i
      $($('.menu_item')[@i]).animate
        top: topMarg + 240 + (@i * 130)
        1000 * (@i)
      $($('.menu_item')[@i]).fadeTo(4000, 1)
      



  height = parseInt($(window).height()) - parseInt($('.navbar-fixed-top').height() ) - 10
  height_navbar = parseInt($('.navbar-fixed-top').height() )
  objects = $('.to_hide')
  $('.menu').css('height', height)

  $.each objects, (i, el) ->
    obj = new Slide el.id, i
    obj.load()
  #   topMarg = parseInt($(el).css('top')) + 1000   
  #   $(el).animate
  #     top: topMarg + 100 + (i * 75)
  #     1000 * (i)
  #   $($('.menu_item')[i]).animate
  #     top: topMarg + 240 + (i * 130)
  #     1000 * (i)

  #   $(this).click ->
  #     $('.e_h').fadeOut(1000)
  #     $(this).removeClass('to_hide')
  #     animateCascadeTop()
  #     delay 5000, toTop(this)
  # $('.e_h').fadeIn('slow')
  # $('.menu_item').fadeTo(4000, 1)

  
    

  animateCascadeTop = ()->
    hideElements = $('.to_hide')
    for x in hideElements
      $(x).animate
        left: -400
        top: -1000
        1000
      $(x).css('-webkit-transform', 'rotateY(30deg)')
      $(x).css('transform', 'rotateY(30deg)')
    $('.menu_item').fadeOut('slow')


  toTop = (x)->
    $(x).css('top', height_navbar + 'px')
    $(x).css('bottom', '0px')
    $(x).css('left', '0px')
    $(x).css('width', '100%')
    $(x).css('height', height)
    $(x).css('-webkit-transform', 'rotateX(0)')
    $(x).css('transform', 'rotateX(0)')
    $(x).css('position', 'fixed')

  fadeFromTop = (obj) ->
    topMarg = parseInt($(obj).css('top')) + 1000   
    $(obj).css('top', topMarg)

  showMenuElements = () ->
    $('.e_h').show()

  delay = (ms, func) -> setTimeout func, ms

  delay 6000, showMenuElements()


