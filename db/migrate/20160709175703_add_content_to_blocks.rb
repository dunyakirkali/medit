class AddContentToBlocks < ActiveRecord::Migration[5.0]
  def change
    add_column :blocks, :content, :text
  end
end
