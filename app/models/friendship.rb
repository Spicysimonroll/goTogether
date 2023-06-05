class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  has_many :group_friendships
  has_many :groups, through: :group_friendships

  has_many :invitations
  has_many :events, through: :invitations
end
