class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :ndc, index: true
      t.integer :qty
      t.decimal :price
      t.text :instructions
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
