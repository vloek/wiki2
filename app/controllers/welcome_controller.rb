class WelcomeController < ApplicationController
	def welcome
		@menu_item = Page.where(:show_in_menu => true)
	end

end
