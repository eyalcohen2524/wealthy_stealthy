class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :username, presence: true
  has_many :rentals
  has_many :packages
  validates :username, presence: true, uniqueness: true

  has_one_attached :photo
  validates :photo, presence: true
end
