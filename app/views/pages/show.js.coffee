delay = (ms, func) ->
	setTimeout func, ms

display = ->
	$(".current_content").animate
		opacity: 0, 'fast'
		->
			$(this).stop().css('background', 'url(/assets/slide_full_bg.png)')

			$(this).stop().html('<%= escape_javascript render 'pages/display_page', page: @page %>')
			$(this).animate
				opacity: 1
				->
					scry = screen.height - 290
					$('.scrolled-container').css('height', scry)
					$('a').on 'click', ->
						window.location.hash = $(this).attr('href')



delay 100, display
