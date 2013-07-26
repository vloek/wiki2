(function() {
  $(document).ready(function() {
    $('.nested_hint').draggable({
      drag: function() {
        $(this).find('.x_ord').val($(this).css('left'));
        $(this).find('.y_ord').val($(this).css('top'));
        return $(this).find('.btn-success').removeClass('btn-success').addClass('btn-warning');
      }
    }).resizable({
      handles: "se, sw",
      resize: function() {
        $(this).find('.width_ord').val($(this).css('width'));
        $(this).find('.height_ord').val($(this).css('height'));
        return $(this).find('.btn-success').removeClass('btn-success').addClass('btn-warning');
      }
    });
    $('.line').draggable({
      drag: function() {
        $(this).find('.x_ord').val($(this).css('left'));
        $(this).find('.y_ord').val($(this).css('top'));
        return $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning');
      }
    }).resizable({
      resize: function() {
        $(this).find('.width_ord').val($(this).css('width'));
        $(this).find('.height_ord').val($(this).css('height'));
        return $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning');
      }
    });
    $('.hint').draggable({
      drag: function() {
        $(this).find('.x_ord').val($(this).css('left'));
        $(this).find('.y_ord').val($(this).css('top'));
        return $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning');
      }
    }).resizable({
      resize: function() {
        $(this).find('.width_ord').val($(this).css('width'));
        $(this).find('.height_ord').val($(this).css('height'));
        return $(this).find('.btn-success').removeClass('btn-success').stop().addClass('btn-warning');
      }
    });
    return $('.close').click(function() {
      return $('#oneModal').hide();
    });
  });

}).call(this);
