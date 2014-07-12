class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.string :guest_email
      t.string :guest_nickname

      t.timestamps
    end
  end
end
