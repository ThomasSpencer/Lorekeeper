FactoryGirl.define do

  factory :cities do
    continent_id  { rand(1..5) }
    name          { ["Test City 1", "Test City 2", "Test City 3"].sample }
    population    { rand(100..1000)}
    description   { ["This is a great city!", "I never want to visit this place"].sample }
  end

end
