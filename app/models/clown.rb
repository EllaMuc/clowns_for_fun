class Clown < ApplicationRecord
  has_one_attached :photo
  has_many :reservations
  has_many_attached :photos
  belongs_to :user
end
