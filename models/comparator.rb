  class Comparator

    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
    end


   def compare_play()
     if @player1 == "rock" && @player2 == "scissors" || @player1 == "paper" && @player2 == "rock" || @player1 == "scissors" && @player2 == "paper"
       return " Player1. As the winner, player1 played '#{@player1}' while player2 played '#{@player2}'"
     elsif @player1 == "rock" && @player2 == "rock" || @player1 == "scissors" && @player2 == "scissors" || @player1 == "paper" && @player2 == "paper"
       return " to both of you guys. You have played draw as player 1 played '#{@player1}' & player 2 played '#{@player2}'"
     elsif @player1 == "scissors" && @player2 == "rock" || @player1 == "rock" && @player2 == "paper" || @player1 == "paper" && @player2 == "scissors"
       return " Player2. As the winner, player2 played '#{@player2}' while player1 played '#{@player1}'"
     else
       return " to both of you for deciding to play. please play correct signs"
     end
   end
end
