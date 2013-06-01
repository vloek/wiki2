$('#nested_form').append("<%= j render 'hints/form' %>")
$('.drago').draggable
  drag: ->
    $(this).find('.x_ord').val($(this).css('left'))
    $(this).find('.y_ord').val($(this).css('top'))

$('form[data-remote]').live 'submit', ->
    $(this).callRemote()
    e.preventDefault()

# $('.drago').draggable
#   drag: (event, ui) ->
#     $(this).find('.x_ord').val('1')
#     $(this).find('.y_ord').val('1')