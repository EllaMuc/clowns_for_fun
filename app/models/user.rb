class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :clowns, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reservations
  validates :first_name, presence: true, length: { maximum: 50 }


end
