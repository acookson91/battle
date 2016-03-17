class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
  end

  def attack(player)
   player.be_attacked
  end

  def change_player
      @player_1,@player_2 = @player_2,@player_1
   end

end
