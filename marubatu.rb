# 012345678 を並べて○ ☓ ゲームを実装する

# 入力した数値を配列の該当する場所に格納する
# 00 -> 0
# 01 -> 1

# 0 1 2
# 3 4 5
# 6 7 8

puts '00|01|02'
puts '10|11|12'
puts '20|21|22'

array = [
  [0,1,2],
  [3,4,5],
  [6,7,8]
]

i = 0
answer = 0
#while i <= 8
while i < 3
  puts 'A) ○ を置く場所の数を入力してください'
  answer = gets.chomp

  case answer

  when "00"
    array[0][0] = 1
    p array[0]
    p array[1]
    p array[2]

  when "01"
    array[0][1] = 2
    p array[0]
    p array[1]
    p array[2]

  else
    p '数値を入力してください'
    break
  end

# when
#    array[0][1]
#    array[0][2]
#
#    array[1][0]
#    array[1][1]
#    array[1][2]
#
#    array[1][0]
#    array[1][1]
#    array[1][2]

  puts 'B) ☓ を置く場所の数を入力してください'
  answer = gets.chomp

  case answer

  when "00"
    array[0][0] = '☓ '
    p array[0]
    p array[1]
    p array[2]

  when "01"
    array[0][1] = '☓ '
    p array[0]
    p array[1]
    p array[2]

  else
    p '数値を入力してください'
    break
  end
  i += 1
end

