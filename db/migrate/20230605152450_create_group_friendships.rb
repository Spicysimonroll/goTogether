class CreateGroupFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :group_friendships do |t|
      t.references :friendship, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
