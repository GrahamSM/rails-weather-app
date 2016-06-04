class WeatherController < ApplicationController

  def new
    @weather = Weather.new
  end

  def index
  end

  def create
    @weather = Weather.new(city: params[:name], lat: params[:lat], lon: params[:lon])
    respond_to do |format|
      if @weather.save
        format.html { redirect_to @weather, notice: 'Weather object was successfully created.' }
        format.js {}
        format.json {render json: @weather, status: :created, location: @weather }
      else
        binding.pry
        redirect_to root_path
      end
    end
  end

  def update
  end



end
