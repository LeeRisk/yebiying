class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.string :storage
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end
  end
end
