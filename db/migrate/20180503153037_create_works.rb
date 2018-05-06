class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :price
      t.string :unit

      t.timestamps
    end
  end
end
