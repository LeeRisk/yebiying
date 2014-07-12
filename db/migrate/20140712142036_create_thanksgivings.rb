class CreateThanksgivings < ActiveRecord::Migration
  def change
    create_table :thanksgivings do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
