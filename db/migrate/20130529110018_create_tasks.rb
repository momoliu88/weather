class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :city
      t.string :weather_info

      t.timestamps
    end
  end
end
