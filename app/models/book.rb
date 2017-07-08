class Book < ApplicationRecord
  belongs_to :user
  has_many :categories, dependent: :destroy
  has_many :notices, dependent: :destroy
  mount_uploader :image, ImageUploader
end
