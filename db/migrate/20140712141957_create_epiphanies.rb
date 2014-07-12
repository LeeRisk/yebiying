class CreateEpiphanies < ActiveRecord::Migration
  def change
    create_table :epiphanies do |t|
      t.text :body

      t.timestamps
    end
  end
end
