class ChangePostTable < ActiveRecord::Migration
  def change
    add_column :posts, :desc, :string
    add_column :posts, :location, :string
    add_column :posts, :longitude, :float
    add_column :posts, :latitude, :float
    add_column :posts, :src, :string
    add_column :posts, :link, :string
    remove_column :posts, :body
  end
end
