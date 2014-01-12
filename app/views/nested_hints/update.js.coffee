$('#nested_hint_<%= @nested_hint.id %>').css('border-radius', "<%=@nested_hint.radius%>px")
$('#nested_hint_<%= @nested_hint.id %>').find('.btn-warning').addClass("btn-success").removeClass('btn-warning')
