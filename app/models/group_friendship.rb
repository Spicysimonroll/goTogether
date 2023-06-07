class GroupFriendship < ApplicationRecord
  belongs_to :friendship
  belongs_to :group
end
