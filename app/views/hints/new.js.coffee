$('#nested_form').append("<%= j render 'hints/form' %>")
$('.drago').draggable()

$('form[data-remote]').live 'submit', ->
    $(this).callRemote()
    e.preventDefault()
