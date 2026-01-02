class Party < ApplicationRecord
  has_many :invitations
  has_many :people, through: :invitations
end
