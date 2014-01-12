class WelcomeController < ApplicationController
	def welcome
    @fullscreen = params[:fullscreen].try(:to_bool) || false
		@menu_item = Page.where(:show_in_menu => true)
	end

end
