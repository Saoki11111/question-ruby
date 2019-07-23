# ○ ☓ ゲームを実装する
#
# 座標
# 0 | 1 | 2
# 3 | 4 | 5
# 6 | 7 | 8 

# 出力 

class Screen
  def screen
    puts '00|01|02'
    puts '10|11|12'
    puts '20|21|22'
  end
end

s = Screen.new

# 配列を準備
array = [
  [0,1,2],
  [3,4,5],
  [6,7,8]
]

## 入力
## 入力した文字列を座標の配列に格納する処理 
#i = 0
#input = 0
#count = 0
#result = 0
#
##result = 1
##p "result: #{result}"
##result == 1
#
##while i <= 8
#while i < 3
#  puts 'A) ○ を置く場所の数を入力してください'
#  input = gets.chomp
#
#  case input 
#
#  when "00"
#    array[0][0] = 1
#
#  when "01"
#    array[0][1] = 1
#
#  when "02"
#    array[0][2] = 1
#
#  else
#    p '正しい数値を入力してください'
#    break
#  end
#
## ---
##
##  # Bの処理
##  puts 'B) ☓ を置く場所の数を入力してください'
##
## ---
#
#  # ループ処理
#  i += 1
#
## 判定
## 配列内の合計から勝敗を判定する処理
##  count += 1
##
##  if count >= 3
##    result =  array[0].inject(:+)
##    p "result: #{result}"
##
##    case result
##    when result == "3"
##      p "WIN"
##    #when array[3,4,5] == 3
##    #  p "WIN"
##    #when array[6,7,8] == 3
##    #  p "WIN"
##    else
##      p "default"
##    end
##  end
#
#end
