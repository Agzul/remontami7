class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :title
      t.string :alt

      t.attachment :logo
      t.attachment :background

      t.references :info,    foreign_key: true
      t.attachment :info_image

      t.references :gallery, foreign_key: true
      t.attachment :gallery_image
      t.boolean    :gallery_cover, default: false

      t.timestamps
    end
  end
end
