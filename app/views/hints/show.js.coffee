# alert $(this).attr('class')
c = $('#new_hint').find('.btn-warning')
c.removeClass('btn-warning').addClass('btn-success')
c.attr('value', 'Закреплено')