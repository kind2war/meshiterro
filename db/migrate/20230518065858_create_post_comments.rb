class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.string :comment
      t.string :text
      t.integer :uer_id
      t.integer :post_image_id

      t.timestamps
    end
  end
end
