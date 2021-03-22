require './test/test_helper'

class ChoiceTest < Minitest::Test
  def test_it_exists
    choice = Choice.new('rock')

    assert_instance_of Choice, choice
  end

  def test_it_has_readable_thing_attributes
    choice = Choice.new('rock')

    assert_equal 'rock', choice.thing
  end

  def test_it_raises_error_if_thing_is_invalid
    assert_raises(InvalidChoiceError) { Choice.new('snake') }
  end

  def test_it_compares_equality
    choice1 = Choice.new('rock')
    choice2 = Choice.new('rock')

    assert choice1 == choice2


    choice1 = Choice.new('rock')
    choice2 = Choice.new('paper')

    refute choice1 == choice2
  end

  def test_it_compares_bigger_than
    choice1 = Choice.new('rock')
    choice2 = Choice.new('paper')

    assert choice2 > choice1

    choice1 = Choice.new('rock')
    choice2 = Choice.new('scissors')

    assert choice1 > choice2

    choice1 = Choice.new('paper')
    choice2 = Choice.new('scissors')

    assert choice2 > choice1
  end

  def test_it_compares_smaller_than
    choice1 = Choice.new('rock')
    choice2 = Choice.new('paper')

    assert choice1 < choice2

    choice1 = Choice.new('rock')
    choice2 = Choice.new('scissors')

    assert choice2 < choice1

    choice1 = Choice.new('paper')
    choice2 = Choice.new('scissors')

    assert choice1 < choice2
  end
end
