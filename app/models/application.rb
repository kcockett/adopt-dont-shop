class Application < ApplicationRecord
  has_many :application_pets
  has_many :pets, through: :application_pets

  attribute :description, :string, default: ""

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :status, presence: true
  attribute :status, :string, default: "In Progress"
end