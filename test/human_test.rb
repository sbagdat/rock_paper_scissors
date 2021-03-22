require './test/test_helper'

class HumanTest < Minitest::Test
  def test_it_exits
    human = Human.new('Anıl')

    assert_instance_of Human, human
  end

  def test_it_make_choice_as_manual
    human = Human.new('Anıl')

    human.make_choice('paper')

    assert_equal "paper", human.choice.thing
  end
end
