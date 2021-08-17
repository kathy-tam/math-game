require './player'
require './question'
require './turn'

player1 = Player.new
player2 = Player.new
turn = Turn.new

while player1.lives > 0 && player2.lives > 0
  # find who's turn it is
  current_player = turn.player
  if current_player == 0
    current_player = 2
  end
  print "Player #{current_player}: "

  # prompt the question, check the answer and provide feedback
  if question
    puts "Player #{current_player}: YES! You are correct."
  else
    puts "Player #{current_player}: Seriously? No!"
    if current_player == 1
      player1.lose_life
    else
      player2.lose_life
    end
  end

  # print current scores
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  puts "----- NEW TURN -----"
  turn.next
end

# Check for winner
winner = nil
winning_score = nil

if player1.lives == 0 
  winner = 2
  winning_score = player2.lives
else
  winner = 1
  winning_score = player1.lives
end

puts "Player #{winner} wins with a score of #{winning_score}/3"
puts "----- GAME OVER -----"
puts "Goodbye!"