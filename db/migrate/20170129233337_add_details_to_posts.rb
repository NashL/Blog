class AddDetailsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :slug, :string, limit:30
  end
end
