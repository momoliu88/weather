class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :content
      t.integer :status
      t.string :area_code

      t.timestamps
    end
  end
end
