class Package < ApplicationRecord
  belongs_to :user
  has_many :rentals
  validates :price, presence: true
  validates :description, presence: true
  validates :name, presence: true
end
