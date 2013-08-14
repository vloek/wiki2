$('.btn_main_close').click(function(){
	winer = window.open("",'_self');
  winer.close();
});

$('.line_kk').on('click', function() {
  $(this).removeClass('btn-warning').stop().addClass('btn-success');
});
