class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.string :second_name
      t.string :photo
      t.text :details

      t.timestamps null: false
    end
  end
end
