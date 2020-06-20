class Message < ApplicationRecord
  belongs_to :user , optional: true
  has_many_attached :images
  has_many :tools

  validates :images,:title,:text, presence: {message:"入力されていない項目があります"}
  validates :images, file_content_type: { allow: ['image/jpeg', 'image/png'] }

end
