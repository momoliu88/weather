class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :mobile_number
      t.string :location
      t.integer :sex
      t.timestamps
    end
  end
end
