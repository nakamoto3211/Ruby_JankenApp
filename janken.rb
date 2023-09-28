judgement = true

puts "じゃんけん..."
puts "0(グー) 1(チョキ) 2(パー)"
my_hand = gets.to_i
opponent = rand(0..2)
puts "ポン!!"
puts "---------------"

while judgement do
  until my_hand == 0 || my_hand == 1 || my_hand == 2 do
    puts "0~2の数字を入力してください"
    my_hand = gets.to_i
  end
  
  case my_hand
    when 0
      puts "あなた：グーを出しました"
    when 1
      puts "あなた：チョキを出しました"
    when 2
      puts "あなた：パーを出しました"
  end
  
  case opponent
    when 0
      puts "相手：グーを出しました"
    when 1
      puts "相手：チョキを出しました"
    when 2
      puts "相手：パーを出しました"
  end
  
  if my_hand == opponent
    puts "あいこで..."
    puts "0(グー) 1(チョキ) 2(パー)"
    my_hand = gets.to_i
    opponent = rand(0..2)
    puts "しょ!!"
    puts "---------------"
  else
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    my_direction = gets.to_i
    op_direction = rand(0..3)
    puts "ホイ!!"
    puts "---------------"
    
    until my_direction == 0 || my_direction == 1 || my_direction == 2 || my_direction == 3 do
      puts "0~3の数字を入力してください"
      my_direction = gets.to_i
    end
    
    case my_direction
      when 0
        puts "あなた：上"
      when 1
        puts "あなた：下"
      when 2
        puts "あなた：左"
      when 3
        puts "あなた：右"
    end
    
    case op_direction
      when 0
        puts "相手：上"
      when 1
        puts "相手：下"
      when 2
        puts "相手：左"
      when 3
        puts "相手：右"
    end
    
    if ((my_hand == 0 && opponent == 1) || (my_hand == 1 && opponent == 2) || (my_hand == 2 && opponent == 0)) && my_direction == op_direction
      puts "あなたの勝ちです"
      judgement = false
    elsif ((my_hand == 0 && opponent == 2) || (my_hand == 1 && opponent == 0) || (my_hand == 2 && opponent == 1)) && my_direction == op_direction
      puts "あなたの負けです"
      judgement = false
    else
      puts "じゃんけん..."
      puts "0(グー) 1(チョキ) 2(パー)"
      my_hand = gets.to_i
      opponent = rand(0..2)
      puts "ポン!!"
      puts "---------------"
    end
  end
end