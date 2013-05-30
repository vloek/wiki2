$('div.drago').draggable
	drag: (event, ui) ->
		$(this).find('.x_ord').val($(this).attr('left'))
		$(this).find('.y_ord').val($(this).attr('top'))


