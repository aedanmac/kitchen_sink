class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :directions
      t.string :ingredients

      t.timestamps null: false
    end
  end
end
