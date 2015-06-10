class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :details

      t.timestamps null: false
    end
  end
end
