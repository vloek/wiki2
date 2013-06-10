# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.nested_hint')
  .draggable
    drag: ->
      $(this).find('.x_ord').val($(this).css('left'))
      $(this).find('.y_ord').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
  .resizable
    handles: "se, sw",
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('.tn-warning')


  $('.line')
    .draggable
      drag: ->
        $(this).find('.x_ord').val($(this).css('left'))
        $(this).find('.y_ord').val($(this).css('top'))
        $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
    .resizable
      resize: ->
        $(this).find('.width_ord').val($(this).css('width'))
        $(this).find('.height_ord').val($(this).css('height'))
        $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')


  $('.hint').draggable
    drag: ->
      $(this).find('.x_ord').val($(this).css('left'))
      $(this).find('.y_ord').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')

  $('.close').click ->
    $('#oneModal').hide()


  # $('.show_modal').click ->
  #   id = $(this).attr('data-id')
  #   hint = $("hint_#{id}")
  #   jQuery($('#oneModal')).replaceWith hint.find('.hidden_form') 
  #   $('#oneModal').show()