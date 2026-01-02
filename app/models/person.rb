class Person < ApplicationRecord
  has_many :invitations
  has_many :parties, through: :invitations
end
