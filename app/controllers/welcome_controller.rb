class WelcomeController < ApplicationController
	def welcome
    @fullscreen = params[:fullscreen].try(:to_bool) || false
		@menu_item = Page.where(:show_in_menu => true)
	end


  def welcome2d
    @fullscreen = params[:fullscreen].try(:to_bool) || false
    @menu_item = Page.where(:show_in_menu => true)
  end

  def test
    @fullscreen = params[:fullscreen].try(:to_bool) || false
    @menu_item = Page.where(:show_in_menu => true)
    render layout: 'wiki'
  end

  def env
  end
end
