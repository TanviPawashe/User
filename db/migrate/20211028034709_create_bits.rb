class CreateBits < ActiveRecord::Migration[6.1]
  def change
    create_table :bits do |t|
      t.string :title
      t.text :headline
      t.text :footline
      t.text :description

      t.timestamps
    end
  end
end
