FactoryGirl.define do

  factory :landscapes do
    continent_id      { rand(1..5) }
    name              { ["Isle of Mists", "Brightthorn Woods", "The Golden Road"].sample }
    terrain           { ["Forest", "Plains", "Island", "Underdark"].sample }
    description       { ["This is a cool place", "It was hard to get here"].sample }
  end

end
