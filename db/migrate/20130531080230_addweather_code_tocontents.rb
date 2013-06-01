class AddweatherCodeTocontents < ActiveRecord::Migration
  def up
    add_column :contents,:weather_code,:string
  end

  def down
  end
end
