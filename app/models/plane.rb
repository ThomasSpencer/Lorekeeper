class Plane < ApplicationRecord
  belongs_to :story

  has_many :continents
end
