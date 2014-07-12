class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.text :body
      t.integer :user_id
      t.string :guest_nickname
      t.string :guest_email

      t.timestamps
    end
  end
end
