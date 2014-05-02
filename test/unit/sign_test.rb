require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  # test all combinations of signs
  test "rock beats scissors beats paper beats rock" do
    rock = Sign.new(:rock)
    scissors = Sign.new(:scissors)
    paper = Sign.new(:paper)
    
    assert rock.beats(scissors)
    assert scissors.beats(paper)
    assert paper.beats(rock)
    assert !rock.beats(paper)
    assert !paper.beats(scissors)
    assert !scissors.beats(rock)
    assert rock.beats(rock).nil?
    assert paper.beats(paper).nil?
    assert scissors.beats(scissors).nil?
  end
  
  # test that a random sign is generated
  test "random sign" do
    sign = Sign.random
    assert_not_nil sign
  end
end
