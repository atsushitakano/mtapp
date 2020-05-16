class Message < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :tools
end
