require './test/test_helper'

class ComputerTest < Minitest::Test
  def test_it_exits
    computer = Computer.new

    assert_instance_of Computer, computer
  end

  def test_it_has_named_as_computer
    computer = Computer.new

    assert_equal 'Computer', computer.name
  end

  def test_it_make_choice_automatically
    computer = Computer.new

    computer.make_choice

    assert_includes %w[rock paper scissors], computer.choice.thing
  end
end
