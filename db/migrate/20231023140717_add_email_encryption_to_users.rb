class AddEmailEncryptionToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :full_name, :string
    add_column :users, :avatar_url, :string
  end
end
