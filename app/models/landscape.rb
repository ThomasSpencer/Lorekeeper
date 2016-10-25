class Landscape < ApplicationRecord
  belongs_to :continent

  has_many :creatures
end
