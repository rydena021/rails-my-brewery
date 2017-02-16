class Beer < ApplicationRecord
  validates :name, :description, :brewery, :style, presence: true
  validates :style, uniqueness: { scope: :brewery }

  belongs_to :brewery
  belongs_to :style
end
