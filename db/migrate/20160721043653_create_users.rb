class CreateUsers < ActiveRecord::Migration
  def change
    create_table :user do |t|

      t.string :name, null: false, limit: 30
      t.string :email, null: false, limit: 40
      t.string :address, null: false, limit: 50
      t.string :password, null: false, limit: 20
      t.integer :cc_number

      t.timestamps
    end
  end
end
