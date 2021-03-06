class Package < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many_attached :photos

  validates :price, presence: true
  validates :description, presence: true
  validates :name, presence: true
end
