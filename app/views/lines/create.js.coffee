$("#<%= @obj_id %>").replaceWith(("<%= j render 'lines/line_fields', line_fields: @line  %>"))

$("#<%= @obj_id %>").find('btn-warning').removeClass('btn-warning').stop().addClass('btn-success')
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

$('#line_kk').click ->
	$(this).removeClass('btn-warning').stop().addClass('btn-success')