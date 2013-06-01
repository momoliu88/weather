class Modifyname < ActiveRecord::Migration
  def up
    rename_column :tasks,:city_code,:area_code
  end

  def down
  end
end
