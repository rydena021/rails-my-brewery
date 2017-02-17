class Brewery < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  has_many :styles, through: :beers
  has_many :beers, dependent: :destroy

  has_attachment :photo
end
