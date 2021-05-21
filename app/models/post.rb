class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :upload_photo
  has_many :comments, dependent: :destroy
end
