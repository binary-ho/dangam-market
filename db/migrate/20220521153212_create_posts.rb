class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |post|
      post.string :item
      post.integer :price
      post.string :address
      post.string :dong
      post.timestamps
    end
  end
end
