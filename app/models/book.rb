class Book < ApplicationRecord
  belongs_to :user
  belongs_to :categories
  has_many :notices, dependent: :destroy
  mount_uploader :image, ImageUploader
end
