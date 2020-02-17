class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :package
  validates :rental_date, presence: true

end
