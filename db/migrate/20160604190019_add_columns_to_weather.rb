class AddColumnsToWeather < ActiveRecord::Migration
  def change
    add_column(:weathers, :temp_c, :string)
    add_column(:weathers, :temp_f, :string)
    add_column(:weathers, :relative_humidity, :string)
    add_column(:weathers, :wind_string, :string)
    add_column(:weathers, :visibility_km, :string)
    add_column(:weathers, :wind_kph, :string)
    add_column(:weathers, :temperature_string, :string)
    add_column(:weathers, :observation_time, :string)
  end
end
