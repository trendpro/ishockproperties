class AvailPropertiesController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:edit, :create, :update]
  # GET /avail_properties
  # GET /avail_properties.json
  def index
    @avail_properties = AvailProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @avail_properties }
    end
  end

  # GET /avail_properties/1
  # GET /avail_properties/1.json
  def show
    @avail_property = AvailProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @avail_property }
    end
  end

  # GET /avail_properties/new
  # GET /avail_properties/new.json
  def new
    @avail_property = AvailProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @avail_property }
    end
  end

  # GET /avail_properties/1/edit
  def edit
    @avail_property = AvailProperty.find(params[:id])
  end

  # POST /avail_properties
  # POST /avail_properties.json
  def create
    @avail_property = AvailProperty.new(params[:avail_property])

    respond_to do |format|
      if @avail_property.save
        format.html { redirect_to avail_properties_path }
        format.json { render json: @avail_property, status: :created, location: @avail_property }
      else
        format.html { render action: "new" }
        format.json { render json: @avail_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /avail_properties/1
  # PUT /avail_properties/1.json
  def update
    @avail_property = AvailProperty.find(params[:id])

    respond_to do |format|
      if @avail_property.update_attributes(params[:avail_property])
        format.html { redirect_to avail_properties_path }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @avail_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avail_properties/1
  # DELETE /avail_properties/1.json
  def destroy
    @avail_property = AvailProperty.find(params[:id])
    @avail_property.destroy

    respond_to do |format|
      format.html { redirect_to avail_properties_url }
      format.json { head :no_content }
    end
  end
end
