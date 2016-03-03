class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.string :poster_url

      t.timestamps null: false
    end
  end
end
