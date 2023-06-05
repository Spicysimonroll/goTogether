class Group < ApplicationRecord
  belongs_to :user

  has_many :group_friendships
  has_many :friendships, through: :group_friendships
end
