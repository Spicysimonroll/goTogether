class AddDescriptionToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :description, :text
  end
end
