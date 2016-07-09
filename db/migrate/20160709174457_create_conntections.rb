class CreateConntections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.integer :page_id
      t.integer :block_id
    end
  end
end
