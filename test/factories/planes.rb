FactoryGirl.define do

  factory :planes do
    story_id      { rand(1..5)}
    name          { ["Material Plane", "Fire Plane", "Water Plane", "Wind Plane", "Earth Plane"].sample }
    colour        { ["Silver", "Red", "Blue", "White", "Green"].sample }
    description   { ["This place is cool", "I wish I could visit here"].sample }
  end

end
