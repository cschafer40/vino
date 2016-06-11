class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :user_id
      t.string :price
      t.string :store
      t.text :description
      t.integer :rating
      t.string :style_grape
      t.string :brand

      t.timestamps

    end
  end
end
