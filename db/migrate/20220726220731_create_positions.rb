class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :quantity
      t.integer :cost
      t.integer :ma
      t.integer :st
      t.string :ag
      t.string :pa
      t.string :av
      t.string :skills
      t.string :traits
      t.string :primary
      t.string :secondary
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
