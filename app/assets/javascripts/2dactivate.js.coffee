jQuery ->
  $(document).ready ->
    setProportion()

  $(window).resize ->
    setProportion()

  $(window).on 'orientationchange', ->
    setProportion()


setProportion = ->
  doc_height  = $(document).height()
  doc_width   = $(document).width()
  count_persp = $('.persp').size()  

  persp_height = doc_height / count_persp + 20
  persp_width  = doc_width  / count_persp #+ 130
  $('.menu').css('margin-top', 40)

  $('.persp').width(persp_width).height(persp_height)

  marg_top_persp = persp_height / count_persp + 10
  $('.drag').css('margin-top', marg_top_persp)

  $('#content').css('margin-top', (doc_height / 6 - 130))