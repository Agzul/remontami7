class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.attachment :image
      t.string :title
      t.string :alt

      t.timestamps
    end
  end
end
