jQuery ->
  $('#btn_return').click ->
    $(this).animate
      opacity: 0

  $(document).ready ->
    marginSlide = $(document).width() * 0.3
   
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
  $('.menu_item').css('top', doc_height * 0.3)


display_return = (title, parent_id) ->
  window.scrollTo(0,0)
  $('#header_title').html(title)
  $('.header_btn').animate
    opacity: 1
    300
  $('.header_return').css('display', 'table-cell')
  $('.header_btn').css('display', 'table-cell')
  $('.header_return').css('id', parent_id)



$(document).ready ->

  height    = parseInt($(window).height()) - parseInt($('.navbar-inner').height())
  win_width = parseInt($(window).width())
  objects   = $('.to_hide3d')
  menu_objects = $('.menu_item')
  # $('.menu').css('height', height)
  # animateCascadeTop()

  $.each objects, (i, el) ->
    $(this).click ->
      # $('.e_h') #fadeOut(1000)
      $(this).removeClass('to_hide3d')
      $(this).closest('.perspectiva').removeClass('to_remove')
      animateCascadeTop(this)
      # toTop(this)
  $.each menu_objects, (i, el) ->
    $(this).click ->
      $(this).closest('.perspectiva').find('.slide3d').click()
      # animateCascadeTop($(el).closest('.perspectiva').find('.slide3d').id)
      # toTop(this)

      # $(el).off('click')
      # alert(el)


  animateCascadeTop = (target) ->
    hideElements = $('.to_hide3d')
    elem = '#'+target.id
    # $(hideElements).animate
    #   opacity: 0
    #   'slow'
    #   ->
    $('.menu_item').hide()

    $('.to_remove').animate
      opacity: 0
      700
      ->
        # $('.to_remove').remove()
        # toTop(target)
        $(elem).css('z-index', 10000)
    toTop(elem)



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
    # $(x).css('top', 55)
    # $(x).css('left', 0)
    link = $(x).closest('.perspectiva').find('a.block_a')
    title_text   = $(x).closest('.perspectiva').find('.title span').text()

    $(x).off('click')

    $(x)
      .removeClass('slide3d')
      # .css
      #   left: -$(x).offset().left
      #   top: -$(x).offset().top
    $(x)
      .css('-webkit-transform', 'rotateX(0)')
      .css('transform', 'rotateX(0)')
      # .closest('.perspectiva').css('-webkit-perspective', 'none')

    $(x).closest('.perspectiva').animate
      width: '100%'
      height: '100%'
    $(x).css
      left: 0
      position: 'fixed'
      top: 0
    $('.to_hide3d').remove()
    $('.to_remove').remove()
    # $(x).css('top', -$(x).offset().top )

    $(x)
      .css('width', win_width)
      .css('height', height)


    $(x)
      .addClass('current_content')
    # $(x).closest('.perspectiva').find('a.block_a').click()
    $(link).click()
    $(x).off('click')
    display_return(title_text, 1)



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


