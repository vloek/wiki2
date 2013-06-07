$('#nested_form').append("<%= j render 'form' %>")

$('.line')
  .draggable
    drag: ->
      $(this).find('.x_ord').val($(this).css('left'))
      $(this).find('.y_ord').val($(this).css('top'))
  .resizable
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))

$('#line_top').change ->
	$(this).parent().parent().parent().parent().parent('.line').css('border-top', $(this).val()+"px")