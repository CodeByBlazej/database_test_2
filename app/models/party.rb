class Party < ApplicationRecord
  has_many :invitations
  has_many :people, through: :invitations

  belongs_to :host, class_name: "Person", foreign_key: :host_id

  validates :title, presence: true
end
