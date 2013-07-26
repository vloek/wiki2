$('#nested_form').append("<%= j render 'hints/form' %>")

<% if @fullscreen %>
$('.drago')
  .draggable
    drag: ->
      $(this).find('.x_full').val($(this).css('left'))
      $(this).find('.y_full').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
  .resizable
    handles: "se, sw",
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')

<% else %>

$('.drago')
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
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')

<% end %>

$('form[data-remote]').live 'submit', ->
    $(this).callRemote()
    e.preventDefault()