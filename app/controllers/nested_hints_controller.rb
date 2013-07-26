class NestedHintsController < ApplicationController
  respond_to :js
  # GET /nested_hints
  # GET /nested_hints.json
  def index
    @nested_hints = NestedHint.all
  end

  # GET /nested_hints/1
  # GET /nested_hints/1.json
  def show
    @nested_hint = NestedHint.find(params[:id])
  end

  # GET /nested_hints/new
  # GET /nested_hints/new.json
  def new
    @nested_hint = NestedHint.new
    @nested_hint.hint_id = params[:hint_id]
    @fullscreen = params[:fullscreen]
  end

  # GET /nested_hints/1/edit
  def edit
    @nested_hint = NestedHint.find(params[:id])
  end

  # POST /nested_hints
  # POST /nested_hints.json
  def create
    @nested_hint = NestedHint.new(params[:nested_hint])

    @nested_hint.save
  end

  # PUT /nested_hints/1
  # PUT /nested_hints/1.json
  def update
    @nested_hint = NestedHint.find(params[:id])
    @nested_hint.update_attributes(params[:nested_hint])
  end

  # DELETE /nested_hints/1
  # DELETE /nested_hints/1.json
  def destroy
    @nested_hint = NestedHint.find(params[:id])
    @nested_hint.destroy
  end
end
