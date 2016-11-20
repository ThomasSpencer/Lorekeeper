FactoryGirl.define do

  factory :stories do
    title           { ["Test Story 1", "Test Story 2"].sample }
    total_players   { rand(1..6) }
    ruleset         { ["D&D 5E", "Pathfinder", "D&D 3.5"] }
    total_sessions  { rand(0..10) }
    description     { ["This is a test", "I like cake", "I don't want to type anything long"].sample }
  end

end
