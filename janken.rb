puts 'じゃんけん...'

def janken
  puts '[0]グー\n[1]チョキ\n[2]パー'
  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = ['グー','チョキ','パー']
  puts "your hand:#{jankens[player_hand]}, enemy_hand:#{jankens[program_hand]}"
  if player_hand == program_hand
    puts 'あいこで'
    true
  elsif(player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts 'win'
  else
    puts 'Losing'
    true
  end
end

next_game = true

next_game = janken while next_game
