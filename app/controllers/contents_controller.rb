class ContentsController < ApplicationController
  include TasksHelper
  # GET /contents
  # GET /contents.json
  def index
    puts "index"
    @contents = Content.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
      
      format.json { render json: @contents }
    end
  end
  def save_contents
    infos = params[:infos]
    infos.each{|k,v|
      content = Content.new
      content.area_code = k
      content.content = v
      location = Location.find_by_area_code k
      content.weather_code = location.city_code
      content.cityname = location.location
      content.save
    }
    @contents = Content.all
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def create_contents
    puts "hihihhhhhh"
    locations = Location.all
    @contents = Array.new
    locations.each{|location|
      content = Content.new
      content.cityname = location.location
      content.content = get_weather_info location.city_code
      content.area_code = location.area_code
      content.weather_code = location.city_code
      @contents << content
    }
    puts @contents
    respond_to do |format|
      format.js
      format.html 
      format.json  
    end
  end
  # GET /contents/1
  # GET /contents/1.json
  def show
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/new
  # GET /contents/new.json
  def new
    @content = Content.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/1/edit
  def edit
    @content = Content.find(params[:id])
  end

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(params[:content])

    respond_to do |format|
      if @content.save
        format.html { redirect_to @content, notice: 'Content was successfully created.' }
        format.json { render json: @content, status: :created, location: @content }
      else
        format.html { render action: "new" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contents/1
  # PUT /contents/1.json
  def update
    @content = Content.find(params[:id])

    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to @content, notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url }
      format.json { head :no_content }
    end
  end
end
