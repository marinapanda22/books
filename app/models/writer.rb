class Writer < ApplicationRecord
  has_many :books, dependent: :destroy
end
