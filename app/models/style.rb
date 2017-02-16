class Style < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :beers, dependent: :destroy
  has_many :breweries, through: :beers
end
