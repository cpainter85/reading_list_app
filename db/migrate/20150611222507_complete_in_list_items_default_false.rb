class CompleteInListItemsDefaultFalse < ActiveRecord::Migration
  def change
    change_column :list_items, :complete, :boolean, null: false, default: false
  end
end
