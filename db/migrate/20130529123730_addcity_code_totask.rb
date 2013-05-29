class AddcityCodeTotask < ActiveRecord::Migration
  def up
     add_column :tasks,:city_code,:string
  end

  def down
  end
end
