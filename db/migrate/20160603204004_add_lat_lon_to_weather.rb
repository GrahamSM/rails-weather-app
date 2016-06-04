class AddLatLonToWeather < ActiveRecord::Migration
  def change
    add_column(:weathers, :lat, :string)
    add_column(:weathers, :lon, :string)
  end
end
