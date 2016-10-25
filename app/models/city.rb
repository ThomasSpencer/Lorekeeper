class City < ApplicationRecord
  belongs_to :continent

  has_many :characters
end
