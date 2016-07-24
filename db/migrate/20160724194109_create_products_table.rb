class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name, null: false, limit: 30
      t.string :brand_id, null: false, limit: 40
      t.string :category_id, null: false, limit: 50
      t.decimal :price, precision: 2, null: false


      t.timestamps
    end
  end
end
