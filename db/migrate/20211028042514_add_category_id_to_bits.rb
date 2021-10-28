class AddCategoryIdToBits < ActiveRecord::Migration[6.1]
  def change
    add_reference :bits, :category_id, null: false, foreign_key: true
  end
end
