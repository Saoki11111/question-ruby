# frozen_string_literal: true

#  ox GAME
# TODO

require './calc_marubatu.rb'

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

def set
  input = gets.chomp
end

def set_coordinate(array, player)
  row, col = set.split('').map(&:to_i)
  array[row][col] = player
end

def input_ox(array)
  i = 1
  while i <= 9
    if i.odd?
      puts 'A) ○ を置く場所の数( ex) 01 , 11...)を入力してください'
      set
      set_coordinate(array, 1)
    else
      puts 'B) ○ を置く場所の数( ex) 01 , 11...)を入力してください'
      set
      set_coordinate(array, -1)
    end
    screen(array)
    Calc.calc(array)
    i += 1
    p 'draw' if i == 10
  end
end

array = [
  [0, 0, 0], [0, 0, 0], [0, 0, 0]
]

input_ox(array)
