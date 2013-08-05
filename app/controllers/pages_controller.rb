class PagesController < ApplicationController
	respond_to :html, :js
  http_basic_authenticate_with :name => "admin", :password => "show_all_that_is_hidden", :except => [:new, :show, :edit, :create, :update, :destroy, :fullscreen, :properies_all]

  # GET /pages
  def index
    @pages = Page.where(parent_id: nil)
  end

  # GET /pages/1
  def show
    @page = Page.find(params[:id])
    @fullscreen = params[:fullscreen].try(:to_bool) || false

    if @page.slider?
      render 'show_slider'
    else
      render 'show'
    end
  end

  # GET /pages/new
  def new
    @page = Page.new
    # @page.properties.build
    @fullscreen = params[:fullscreen].to_bool || false
    @indicators = Page.where('parent_id == 2')
    @page.parent_id = params[:parent_id] if params[:parent_id]

    if @page.parent_id.present?
      render '_form'
    else
      render 'form_mini'
    end
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
    @indicators = Page.where(parent_id: 2)
    if @page.slider
      render '_form_by_slider'
    else
      if @page.parent_id.present?
        render '_form'
      else
        render 'form_mini'
      end
    end
  end

  # POST /pages
  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to edit_page_path(@page), notice: 'Page was successfully created.' 
    else
      render action: "new" 
    end
  end

  # PUT /pages/1
  def update
    @page = Page.find(params[:id])
    # replace_blocks(params[:page])

    if @page.update_attributes(params[:page])
      redirect_to edit_page_path(@page), notice: 'Page was successfully updated.' 
    else
      redirect_to pages_url, notice: 'Error! Not install ImageMagick(maybe)' 
    end
  end

  # DELETE /pages/1
  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    redirect_to pages_url
  end


  def fullscreen
    @page = Page.find(params[:page_id])
    @children_pages = Page.where(parent_id: @page.parent_id)
  end

  def properies_all
    @properties = Property.all
  end

end
