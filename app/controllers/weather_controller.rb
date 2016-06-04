class WeatherController < ApplicationController

  def new
    @weather = Weather.new
  end

  def index

  end

  def show
    @weather = Weather.find(params[:id])
  end

  def create
    @weather = Weather.new(city: params[:current_observation][:observation_location][:city], lat: params[:current_observation][:observation_location][:latitude], lon: params[:current_observation][:observation_location][:longitude], temp_c: params[:current_observation][:temp_c], temp_f: params[:current_observation][:temp_f], relative_humidity: params[:current_observation][:relative_humidity],
    wind_string: params[:current_observation][:wind_string], temperature_string: params[:current_observation][:temperature_string], observation_time: params[:current_observation][:observation_time])
    respond_to do |format|
      if @weather.save
        format.html { redirect_to @weather, notice: 'Weather object was successfully created.' }
        format.js {}
        format.json {render json: @weather, status: :created, location: @weather }
      else
        redirect_to root_path
      end
    end
  end

  def get_data
    @weather = Weather.find(params[:id].to_i)
    respond_to do |format|
        format.html { redirect_to @weather }
        format.js {}
        format.json {render json: @weather, location: @weather}
    end
  end

  def update
  end



end
