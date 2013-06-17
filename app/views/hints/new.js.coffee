$('#nested_form').append("<%= j render 'hints/form' %>")

$('.drago').draggable
  drag: ->
    $(this).find('.x_ord').val($(this).css('left'))
    $(this).find('.y_ord').val($(this).css('top'))
    $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')


$('form[data-remote]').live 'submit', ->
    $(this).callRemote()
    e.preventDefault()