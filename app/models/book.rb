class Book < ApplicationRecord
  validates :name, presence: true
  validates :explain, presence: true
  validates :image, presence: true
  validates :genre, presence: true
end
