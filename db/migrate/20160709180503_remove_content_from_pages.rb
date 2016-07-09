class RemoveContentFromPages < ActiveRecord::Migration[5.0]
  def change
    remove_column :pages, :content, :text
  end
end
