class CreateProductStates < ActiveRecord::Migration[6.1]
  def change
    create_table :product_states do |t|
      t.references :product, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true
      t.integer :minimum_age

      t.timestamps
    end
  end
end
