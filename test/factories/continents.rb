FactoryGirl.define do

  factory :continents do
    plane_id          { rand(1..5)}
    name              { ["Ubixia", "Taldorei", "Wildmount"]}
    description       { ["This is a big continent!", "I want to live here"].sample }
  end

end
