class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :description
      t.integer :codename
      t.string :kind

      t.timestamps
    end
  end
end
