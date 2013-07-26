class SlidesController < ApplicationController
  # GET /page/slides
  # GET /page/slides.json
  def index
    @page_slides = Slide.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_slides }
    end
  end

  # GET /page/slides/1
  # GET /page/slides/1.json
  def show
    @page_slide = Slide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_slide }
    end
  end

  # GET /page/slides/new
  # GET /page/slides/new.json
  def new
    @page_slide = Slide.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_slide }
    end
  end

  # GET /page/slides/1/edit
  def edit
    @page_slide = Slide.find(params[:id])
    @fullscreen = params[:fullscreen]
  end

  # POST /page/slides
  # POST /page/slides.json
  def create
    @page_slide = Slide.new(params[:page_slide])

    respond_to do |format|
      if @page_slide.save
        format.html { redirect_to @page_slide, notice: 'Slide was successfully created.' }
        format.json { render json: @page_slide, status: :created, location: @page_slide }
      else
        format.html { render action: "new" }
        format.json { render json: @page_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /page/slides/1
  # PUT /page/slides/1.json
  def update
    @page_slide = Slide.find(params[:id])

    respond_to do |format|
      if @page_slide.update_attributes(params[:page_slide])
        format.html { redirect_to page_slide_url(@page_slide.page, @page_slide), notice: 'Slide was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page/slides/1
  # DELETE /page/slides/1.json
  def destroy
    @page_slide = Slide.find(params[:id])
    @page_slide.destroy

    respond_to do |format|
      format.html { redirect_to page_slides_url }
      format.json { head :no_content }
    end
  end
end
