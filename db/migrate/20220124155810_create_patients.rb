class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :last_name
      t.date :dob
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
