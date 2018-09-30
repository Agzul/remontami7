class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string  :material_type
      t.string  :name
      t.string  :packing
      t.string  :layer_thickness
      t.float   :consumption
      t.string  :consumption_unit
      t.integer :shine
      t.integer :second_layer_time

      t.timestamps
    end
  end
end
