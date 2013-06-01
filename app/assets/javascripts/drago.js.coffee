$('div.drago').draggable
  drag: ->
    $(this).find('.x_ord').val($(this).css('left'))
    $(this).find('.y_ord').val($(this).css('top'))


