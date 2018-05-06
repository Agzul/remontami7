class CreateConsumptions < ActiveRecord::Migration[5.1]
  def change
    create_table :consumptions do |t|
      t.string :name
      t.string :packing
      t.string :layer_thickness
      t.string :consumption

      t.timestamps
    end
  end
end
