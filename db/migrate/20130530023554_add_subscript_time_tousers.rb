class AddSubscriptTimeTousers < ActiveRecord::Migration
  def up
    add_column :users,:subscrip_time,:date
  end

  def down
  end
end
