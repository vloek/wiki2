$('#hint_<%= @hint.id %>').find('.btn-warning').addClass("btn-success").removeClass('btn-warning')
$('#hint_<%= @hint.id %>').find('.content').html("<%= j raw @hint.content %>")
$('#hint_<%= @hint.id %>').find('.title').find('.pull-left').html("<h3><%= j @hint.title.upcase  %></h3>")