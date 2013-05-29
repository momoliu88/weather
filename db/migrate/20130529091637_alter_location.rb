class AlterLocation < ActiveRecord::Migration
  def up
      add_column :locations,:city_code,:string
  end

  def down
  end
end
