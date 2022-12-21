class AddProfileFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :image, :string
    add_column :users, :height, :decimal
    add_column :users, :weight, :decimal
    add_column :users, :date_of_birth, :date
  end
end
