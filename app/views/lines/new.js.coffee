$('#nested_form').append("<%= j render 'form' %>")
$('.line')
  .draggable
    drag: ->
      $(this).find('.x_full').val($(this).css('left'))
      $(this).find('.y_full').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
  .resizable
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')


$('#line_top').change ->
	$(this).parent().parent().parent().parent().parent('.line').css('border-top', $(this).val()+"px")
$('#line_kk').click ->
	$(this).removeClass('btn-warning').stop().addClass('btn-success')