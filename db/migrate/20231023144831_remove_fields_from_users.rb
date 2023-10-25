class RemoveFieldsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :encrypted_email
    remove_column :users, :email_digest
  end
end
