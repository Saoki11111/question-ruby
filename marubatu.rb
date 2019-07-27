# ox GAME

# output
def screen(array)
  array.each do |row|
    count = 0
    row.each do |num|
      case num
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

array = [
  [0, 0, 0],
  [0, 0, 0],
  [0, 0, 0]
]

screen(array)

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

  i += 1
end
