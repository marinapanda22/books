class User < ApplicationRecord
  has_many :notices, dependent: :destroy
  has_many :books, dependent: :destroy
end
