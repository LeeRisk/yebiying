class CreateFms < ActiveRecord::Migration
  def change
    create_table :fms do |t|
      t.string :name
      t.text :description
      t.string :format
      t.string :storage

      t.timestamps
    end
  end
end
