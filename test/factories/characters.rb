FactoryGirl.define do

  factory :characters do
    city_id           { rand(1..5) }
    name              { ["Test NPC 1", "Test NPC 2", "Test NPC 3"].sample }
    profession        { ["Carpenter", "Soilder", "Innkeeper", "Merchant"].sample }
    backstory         { ["They had a boring life", "They had a tragic life"].sample }
  end

end
