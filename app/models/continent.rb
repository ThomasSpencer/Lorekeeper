class Continent < ApplicationRecord
  belongs_to :plane

  has_many :cities
  has_many :landscapes
end
