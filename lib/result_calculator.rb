class ResultCalculator
  attr_reader :players, :winner

  def initialize
    @players = []
    @winner = []
  end

  def add_player(player)
    @players << player
  end

  def calculate_result
    player1 = @players.first
    player2 = @players.last

    @winner = if player1.choice > player2.choice
                [player1]
              elsif player1.choice < player2.choice
                [player2]
              else
                [player1, player2]
              end
  end
end
