$('.nested_hint_new').html("<%= j render 'create_form' %>")
$('#nested_hint_new').removeClass('.nested_hint_new').addClass('nested_hint_<%= @nested_hint.id %>')
$('.nested_hint_<%= @nested_hint.id %>').attr('id', 'nested_hint_<%= @nested_hint.id %>')
$("#nested_hint_<%= @nested_hint.id %>").resizable('destroy')
$("#nested_hint_<%= @nested_hint.id %>")
  .draggable
    drag: ->
      $(this).find('.x_ord').val($(this).css('left'))
      $(this).find('.y_ord').val($(this).css('top'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
  .resizable
    handles: "se, sw",
    resize: ->
      $(this).find('.width_ord').val($(this).css('width'))
      $(this).find('.height_ord').val($(this).css('height'))
      $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning')
