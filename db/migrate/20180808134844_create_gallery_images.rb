class CreateGalleryImages < ActiveRecord::Migration[5.1]
  def change
    create_table :gallery_images do |t|
      t.string     :title
      t.string     :alt
      t.attachment :image
      t.boolean    :cover
      t.references :gallery, foreign_key: true

      t.timestamps
    end
  end
end
