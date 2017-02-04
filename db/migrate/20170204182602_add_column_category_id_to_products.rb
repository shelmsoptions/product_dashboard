class AddColumnCategoryIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :category, index: true
    add_foreign_key :products, :categories
  end
end