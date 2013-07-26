$('#nested_form').append("<%= j render 'form' %>")

<% if @fullscreen %>
$('.nested_hint')
  .draggable
    drag: ->
      $(this).find('.x_full').val($(this).css('left'))
      $(this).find('.y_full').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
$('.nested_hint')
  .resizable
    handles: "se, sw",
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
<% else %>
$('.nested_hint')
  .draggable
    drag: ->
      $(this).find('.x_ord').val($(this).css('left'))
      $(this).find('.y_ord').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
$('.nested_hint')
  .resizable
    handles: "se, sw",
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
<% end %>