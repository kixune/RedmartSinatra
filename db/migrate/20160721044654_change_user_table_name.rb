class ChangeUserTableName < ActiveRecord::Migration
  def change
    rename_table :user, :users
  end
end
