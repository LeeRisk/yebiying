class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.text :description

      t.timestamps
    end
  end
end
