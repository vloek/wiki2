class WelcomeController < ApplicationController
	def welcome
    @fullscreen = params[:fullscreen].try(:to_bool) || false
		@menu_item = Page.where(:show_in_menu => true)
    @mode = params[:mode] if params[:mode] != ''
    if @mode == '3d'
      render template: 'welcome/3d'
    end
	end

end
