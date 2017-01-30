class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, limit: 50
      t.string :content, limit: 250
      t.integer :author_id

      t.timestamps

    end
  end
end
