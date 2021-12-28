def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  player_hand = gets.to_i
  opponent_hand = rand(3)
  
  if player_hand == 3
    puts "じゃんけんを終了します"
    exit
  end
  
  janken_hands = ["グー", "チョキ", "パー"]
  
  puts "ホイ！"
  puts "----------------"
  puts "あなた：#{janken_hands[player_hand]}を出しました"
  puts "相手：#{janken_hands[opponent_hand]}を出しました"
  puts "----------------"
  
  if player_hand == opponent_hand
    puts "あいこで..."
    janken()
  elsif (player_hand == 0 && opponent_hand == 1) || (player_hand == 1 && opponent_hand == 2) || (player_hand == 2 && opponent_hand == 0)
    return "player"
  else
    return "opponent"
  end

end



def amh(janken_winner)
  puts "あっちむいて..."
  puts "0(上)1(下)2(左)3(右)"
  
  player_direction = gets.to_i
  opponent_direction = rand(4)
  
  amh_directions = ["上", "下", "左", "右"]
  
  puts "ホイ！"
  puts "----------------"
  puts "あなた：#{amh_directions[player_direction]}"
  puts "相手：#{amh_directions[opponent_direction]}"
  puts "----------------"
  
  if janken_winner == "player" && player_direction == opponent_direction
    return "あなたの勝ちです"
  elsif janken_winner == "opponent" && player_direction == opponent_direction
    return "あなたの負けです"
  else
    return false
  end
  
end

puts "じゃんけん..."

result = false

until result do
  janken_winner = janken()
  result =  amh(janken_winner)
end

puts result
