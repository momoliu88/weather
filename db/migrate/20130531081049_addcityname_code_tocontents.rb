class AddcitynameCodeTocontents < ActiveRecord::Migration
  def up
    add_column :contents,:cityname,:string
  end

  def down
  end
end
