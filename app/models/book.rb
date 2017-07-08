class Book < ApplicationRecord
  paginates_per 20
  belongs_to :user
  belongs_to :writer
  belongs_to :categories, :optional => true
  has_many :notices, dependent: :destroy
  mount_uploader :image, ImageUploader
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
