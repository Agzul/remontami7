class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name,  null: false
      t.string :price, null: false
      t.string :unit,  null: false
      t.string :plane, null: false

      t.timestamps
    end
  end
end
