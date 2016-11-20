FactoryGirl.define do

  factories :sessions do
    story_id        { rand(1..5) }
    session_number  { rand(1..20) }
    notes           { ["That was fun!", "Can't wait to play again.", "Complete TPK, rerolloing next session."].sample }
  end

end
