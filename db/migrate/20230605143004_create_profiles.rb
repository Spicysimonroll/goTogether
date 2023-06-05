class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.boolean :is_business
      t.string :address
      t.string :username

      t.timestamps
    end
  end
end
