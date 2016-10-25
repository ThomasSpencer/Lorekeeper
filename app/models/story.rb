class Story < ApplicationRecord
  has_many :players
  has_many :sessions
  has_many :planes
  
end
