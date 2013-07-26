$(".field_new_hint").html("<%= j render 'hints/create' %>")

$(".field_new_hint").removeClass("field_new_hint").addClass("hint_<%= @hint.id %>").addClass('hint').attr('id', "hint_<%= @hint.id %>").removeClass('fields').removeClass('drago')
$("#hint_<%= @hint.id %>").resizable('destroy')

$("#hint_<%= @hint.id %>")
  .draggable
    drag: ->
      $(this).find('.x_ord').val($(this).css('left'))
      $(this).find('.y_ord').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').addClass('btn-warning')
  .resizable
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))
      $(this).find('.btn-success').removeClass('btn-success').addClass('btn-warning')
