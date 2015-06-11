class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :name
      t.integer :list_id
      t.boolean :complete
      t.timestamps
    end
  end
end
