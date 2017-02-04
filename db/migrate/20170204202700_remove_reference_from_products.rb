class RemoveReferenceFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :category, index: true
    remove_foreign_key :products, :categories
  end
end
