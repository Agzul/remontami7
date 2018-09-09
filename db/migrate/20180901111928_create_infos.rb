class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.string :link
      t.string :title
      t.string :description
      t.string :keywords
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
