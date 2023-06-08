class AddStatusToInvitations < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :status, :string
  end
end
