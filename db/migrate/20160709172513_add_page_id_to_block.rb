class AddPageIdToBlock < ActiveRecord::Migration[5.0]
  def change
    add_column :blocks, :page_id, :integer
  end
end
