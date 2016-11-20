FactoryGirl.define do

  factory :creatures do
    landscape_id     { rand(1..10) }
    name             { ["Test Creature 1", "Test Creature 2", "Test Creature 3"].sample }
    type             { ["Beast", "Humanoid", "Celestial", "Fiend"].sample }
    size             { ["Small", "Medium", "Large"].sample }
    strength         { rand(2..30) }
    dexterity        { rand(2..30) }
    constitution     { rand(2..30) }
    intelligence     { rand(2..30) }
    wisdom           { rand(2..30) }
    charisma         { rand(2..30) }
    abilities        { ["Multiattack", "Legendary Actions", "Spellcasting"].sample }
  end

end
