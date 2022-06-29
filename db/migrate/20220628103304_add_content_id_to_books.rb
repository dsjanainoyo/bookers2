class AddContentIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :content_id, :integer
  end
end
