# ○ ☓ ゲームを実装する

# 出力 
def screen(array)
  array.each do |row|
    count = 0
    row.each do |num| 
      case num
      when 1
        print("o")
      when -1
        print("x")
      when 0
        print(" ")
      end
      count += 1
      if count <= 2
        print("|")
      end
    end

    print("\n")
  end
end

def isiwooku(array,player)
  input = gets.chomp
  row,col = input.split("").map do |v|
    v.to_i
  end

  array[row][col] = player
end

array = [
  [0,0,0],
  [0,0,0],
  [0,0,0]
]

screen(array)

# 入力
#  puts 'A) ○ を置く場所の数を入力してください'

i = 1
count = 0
while i <= 9
  if i.odd?
    isiwooku(array,1)
  else
    isiwooku(array,-1)
  end
  screen(array)

  i += 1
end
