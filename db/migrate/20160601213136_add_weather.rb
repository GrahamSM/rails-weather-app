class AddWeather < ActiveRecord::Migration
  def change
    create_table :weather do |t|
      t.string :country
      t.string :city
      t.date :time
      t.timestamps null: false
    end
  end
end
