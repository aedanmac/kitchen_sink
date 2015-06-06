class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.date :photo_date
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
