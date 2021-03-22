require './test/test_helper'

class ResultCalcualtorTest < Minitest::Test
  def test_it_exits
    rc = ResultCalculator.new

    assert_instance_of ResultCalculator, rc
  end

  def test_it_has_readable_players
    rc = ResultCalculator.new

    assert_respond_to rc, :players
  end

  def test_it_adds_player
    rc = ResultCalculator.new
    player = Human.new("Anıl")
    rc.add_player(player)

    assert_equal [player], rc.players
  end

  def test_it_calculates_tie
    human = Human.new("Anıl")
    human.make_choice("rock")
    comp = Computer.new
    comp.make_choice
    rc = ResultCalculator.new

    rc.add_player(human)
    rc.add_player(comp)

    comp.stubs(:choice).returns(Choice.new("rock"))
    rc.calculate_result

    assert_includes rc.winner, human
    assert_includes rc.winner, comp

  end

  def test_it_calculates_computer_wins
    human = Human.new("Anıl")
    human.make_choice("rock")
    comp = Computer.new
    comp.make_choice
    rc = ResultCalculator.new

    rc.add_player(human)
    rc.add_player(comp)

    comp.stubs(:choice).returns(Choice.new("paper"))
    rc.calculate_result

    assert_includes rc.winner, comp
    refute_includes rc.winner, human
  end

  def test_it_calculates_human_wins
    human = Human.new("Anıl")
    human.make_choice("scissors")
    comp = Computer.new
    comp.make_choice
    rc = ResultCalculator.new

    rc.add_player(human)
    rc.add_player(comp)

    comp.stubs(:choice).returns(Choice.new("paper"))
    rc.calculate_result

    assert_includes rc.winner, human
    refute_includes rc.winner, comp
  end
end
