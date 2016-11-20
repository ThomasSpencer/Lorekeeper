FactoryGirl.define do

  factory :players do
    story_id       { rand(1..5)}
    character_name { ["Legolas", "Aragorn", "Gandalf", "Gimli"].sample }
    player_name    { ["Bob", "Doug", "Susan", "Jill"].sample }
    backstory      { ["Son of royalty", "Born of noble elven blood", "Super badass wizard", "Angry dwarf"].sample }
    strength       { rand(3..18) }
    dexterity      { rand(3..18) }
    constitution   { rand(3..18) }
    intelligence   { rand(3..18) }
    wisdom         { rand(3..18) }
    charisma       { rand(3..18) }
    experience     { rand(0..299)}
    alignment      { ["LG", "NG", "CG", "LN", "N", "CN", "LE", "NE", "CE"].sample }
  end

end
