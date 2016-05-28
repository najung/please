class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :boll_model, :string
  end
end
