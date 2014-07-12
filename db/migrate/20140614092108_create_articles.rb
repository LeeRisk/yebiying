class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :topic_id
      t.string :title
      t.date :initial_published
      t.text :body
      t.text :abstract

      t.timestamps
    end
  end
end
