# ox GAME
# TODO
# 1) 一度置いた場所には置けないようにする
# 2) 00~22の間以外に置けてしまう # 3) draw 処理が必要 

def screen(array)
  array.each do |row|
    count = 0
    row.each do |num| case num
    when 1
      print('o')
    when -1
      print('x')
    when 0
      print(' ')
    end
    count += 1
    print('|') if count <= 2
    end
    print("\n")
  end
end

def isiwooku(array, player)
  input = gets.chomp
  row, col = input.split('').map(&:to_i)
  array[row][col] = player
end

def calc(array)
  ans_col = 0
  ans_row = 0
  ans_diag = 0
  ans_diag_inverse = -1
  3.times do |n|
    ans_col = 0
    ans_row = 0
    3.times do |num|
      ans_col += array[num][n]
      ans_row += array[n][num]
    end
    ans_diag += array[n][n]
    ans_diag_inverse += array[n][2 - n]
    ans = 0
    if ans_col.abs == 3
      puts 'col exit'
      exit
    elsif ans_row.abs == 3
      puts 'row exit'
      exit
    elsif ans_diag.abs == 3
      puts 'diag exit' 
      exit 
    elsif ans_diag_inverse.abs == 3
      puts 'diag_inverse exit' 
      exit
    end
  end
end

array = [
  [0, 0, 0],
  [0, 0, 0],
  [0, 0, 0]
]

# input
i = 1
while i <= 9
  if i.odd?
    puts 'A) ○ を置く場所の数( ex) 01 , 11...)を入力してください'
    isiwooku(array, 1)
  else
    puts 'B) ○ を置く場所の数( ex) 01 , 11...)を入力してください'
    isiwooku(array, -1)
  end
  screen(array)
  calc(array)
  i += 1
  if i == 10
    p 'draw'
  end
end
