# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('.line').on 'drag', ->
    $(this).find('.x_full').val($(this).css('left'))
    $(this).find('.y_full').val($(this).css('top'))
    $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
  $('.line').on 'resize', ->
    $(this).find('.width_ord').val($(this).css('width'))
    $(this).find('.height_ord').val($(this).css('height'))
    $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')

