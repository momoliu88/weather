class AddareacodeToLocations < ActiveRecord::Migration
  def up
    add_column :locations,:area_code,:string
  end

  def down
  end
end
