class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start_dt, :image
  belongs_to :host

  has_many :entries
  has_many :teams, through: :entries

  has_many :admin_users

  has_one :bracket
end
