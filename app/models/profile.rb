class Profile < ApplicationRecord
  has_one_attached :avatar
  belongs_to :user, optional: true
  validates :nickname, uniqueness: true
  validates :nickname,:activearea ,presence: true
end
