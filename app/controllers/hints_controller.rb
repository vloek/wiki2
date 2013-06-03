class HintsController < ApplicationController
  respond_to :js, :html
  # GET /hints
  # GET /hints.json
  def index
    @hints = Hint.all

  end

  # GET /hints/1
  # GET /hints/1.json
  def show
    @hint = Hint.find(params[:id])

  end

  # GET /hints/new
  # GET /hints/new.json
  def new
    @hint = Hint.new
    @page_slide = Slide.find(params[:slide_id]) if params[:slide_id]
    render 'new'
  end

  # GET /hints/1/edit
  def edit
    @hint = Hint.find(params[:id])
  end

  # POST /hints
  # POST /hints.json
  def create
    @hint = Hint.new(params[:hint])

    @hint.save
  end

  # PUT /hints/1
  # PUT /hints/1.json
  def update
    @hint = Hint.find(params[:id])

    if @hint.update_attributes(params[:hint])
      redirect_to @hint, notice: 'Hint was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /hints/1
  # DELETE /hints/1.json
  def destroy
    @hint = Hint.find(params[:id])
    @hint.destroy
    # redirect_to hints_url 
  end
end
