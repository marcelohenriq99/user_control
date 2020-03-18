class CreateAccessKinds < ActiveRecord::Migration[5.2]
  def change
    create_table :access_kinds do |t|
      t.string :description

      t.timestamps
    end
  end
end
