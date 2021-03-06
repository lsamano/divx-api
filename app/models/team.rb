class Team < ApplicationRecord
  belongs_to :captain, class_name: "User", foreign_key: :captain_id

  has_many :memberships
  has_many :members, through: :memberships, source: :user

  has_many :entries
  has_many :tournaments, through: :entries

  has_many :join_requests
  has_many :requesting_members, through: :join_requests, source: :user
end
