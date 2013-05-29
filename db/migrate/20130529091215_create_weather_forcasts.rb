class CreateWeatherForcasts < ActiveRecord::Migration
  def change
    create_table :weather_forcasts do |t|
      t.string :city
      t.string :temperature
      t.string :wind
      t.string :weather
      t.string :wind_level
      t.string :index
      t.string :date
      t.string :week

      t.timestamps
    end
  end
end
