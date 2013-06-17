class PropertiesController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:edit, :create, :update]
  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
    @properties.each do |property|
      property.assets.build 
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
    end
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @property = Property.find(params[:id])
    5.times { @property.assets.build }

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/new
  # GET /properties/new.json
  def new
    @property = Property.new
    5.times { @property.assets.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
    5.times { @property.assets.build }
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(params[:property])
    @property.user_id = current_user.id
    
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render json: @property, status: :created, location: @property }
      else
        format.html { render action: "new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /properties/1
  # PUT /properties/1.json
  def update
    @property = Property.find(params[:id])

    respond_to do |format|
      if @property.update_attributes(params[:property])
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end
  
  # Action for about us page.
  def about
    
  end
  
  # Action for Contact page.
  def conact
    
  end
  
  # Shows available properties
  def available
    @properties = Property.all
  end
  
  # Displays the websites home page.
  def home
    
  end
end
