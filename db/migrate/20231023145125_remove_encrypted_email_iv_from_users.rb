class RemoveEncryptedEmailIvFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :encrypted_email_iv
  end
end
