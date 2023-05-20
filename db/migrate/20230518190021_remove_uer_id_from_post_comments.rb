class RemoveUerIdFromPostComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_comments, :uer_id, :string
  end
end
