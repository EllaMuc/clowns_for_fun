class Clown < ApplicationRecord
  has_one_attached :photo
  has_many :reservations
  belongs_to :user
  has_many :comments, dependent: :destroy
end
