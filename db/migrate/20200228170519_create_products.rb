class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :description
      t.references :store, foreign_key: true
      t.float :price
      t.integer :status

      t.timestamps
    end
  end
end
