class AddCategoryToNewCollection < ActiveRecord::Migration[5.0]
  def change
    add_reference :new_collections, :category, foreign_key: true
  end
end
