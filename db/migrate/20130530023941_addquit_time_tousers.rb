class AddquitTimeTousers < ActiveRecord::Migration
  def up
    add_column :users,:quit_time,:date
  end

  def down
  end
end
