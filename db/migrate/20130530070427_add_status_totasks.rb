class AddStatusTotasks < ActiveRecord::Migration
  def up
    add_column :tasks,:status,:integer
  end

  def down
  end
end
