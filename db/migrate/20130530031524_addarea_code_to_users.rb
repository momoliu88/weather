class AddareaCodeToUsers < ActiveRecord::Migration
  def up
    add_column :users,:area_code,:string
  end

  def down
  end
end
