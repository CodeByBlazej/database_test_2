class Person < ApplicationRecord
  has_many :invitations
  has_many :parties, through: :invitations

  has_many :hosted_parties, foreign_key: "host_id", class_name: "Party"

  validates :name, presence: true
end
