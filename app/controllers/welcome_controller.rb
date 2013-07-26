class WelcomeController < ApplicationController
	def welcome
    @fullscreen ||= params[:fullscreen]
		@menu_item = Page.where(:show_in_menu => true)
	end

end
