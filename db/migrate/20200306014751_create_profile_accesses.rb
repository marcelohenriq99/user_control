class CreateProfileAccesses < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_accesses do |t|
      t.string :object_access
      t.references :access_kind, foreign_key: true
      t.references :user_profile, foreign_key: true

      t.timestamps
    end
  end
end
