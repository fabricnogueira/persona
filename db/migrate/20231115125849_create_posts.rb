class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto'

    create_table :posts, id: :uuid do |t|
      t.string :attachment
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
