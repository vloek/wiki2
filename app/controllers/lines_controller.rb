class LinesController < ApplicationController
  respond_to :js, :html
  # GET /lines
  # GET /lines.json
  def index
    @lines = Line.all
  end

  # GET /lines/1
  # GET /lines/1.json
  def show
    @line = Line.find(params[:id])

  end

  # GET /lines/new
  # GET /lines/new.json
  def new
    @line = Line.new
    @line.slide_id = params[:slide_id]
    @line = feel_by_type(@line, params[:type])
    @fullscreen = params[:fullscreen].try(:to_bool) || false
  end

  # GET /lines/1/edit
  def edit
    @line = Line.find(params[:id])
  end

  # POST /lines
  # POST /lines.json
  def create
    @line = Line.new(params[:line])
    @obj_id = params[:obj_id]
    @line.save!
  end

  # PUT /lines/1
  # PUT /lines/1.json
  def update
    @line = Line.find(params[:id])
    @line.update_attributes(params[:line])
  end

  # DELETE /lines/1
  # DELETE /lines/1.json
  def destroy
    @line = Line.find(params[:id])
    @line.destroy

  end

  private
  def feel_by_type(obj, param)
    case param
    when 'line_top'
      obj.top    = '1'
      obj.left   = '0'
      obj.bottom = '0'
      obj.right  = '0'
    when 'line_top_left'
      obj.top    = '1'
      obj.left   = '1'
      obj.bottom = '0'
      obj.right  = '0'
    when 'line_top_right'
      obj.top    = '1'
      obj.left   = '0'
      obj.bottom = '0'
      obj.right  = '1'
    when 'line_bottom_left'
      obj.top    = '0'
      obj.left   = '1'
      obj.bottom = '1'
      obj.right  = '0'
    when 'line_bottom_right'
      obj.top    = '0'
      obj.left   = '0'
      obj.bottom = '1'
      obj.right  = '1'
    end
    obj
  end
end
