$(".field_new_hint").html("<%= j render 'hints/create' %>")
$(".field_new_hint").removeClass("field_new_hint").addClass("hint_<%= @hint.id %>")
