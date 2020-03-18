class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :description
      t.string :priority
      t.string :status
      t.references :user, foreign_key: true
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
