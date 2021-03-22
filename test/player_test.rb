require './test/test_helper'

class PlayerTest < Minitest::Test

  def test_it_exits
    player = Player.new('Anıl')

    assert_instance_of Player, player
  end

  def test_it_has_readable_name
    player = Player.new('Anıl')

    assert_equal 'Anıl', player.name
  end

  def test_it_can_make_choice
    player = Player.new('Eren')

    player.make_choice('rock')

    assert_instance_of Choice, player.choice
    assert_equal 'rock', player.choice.thing
  end
end







