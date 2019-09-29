# frozen_string_literal: true

#  ox GAME
# TODO

require './calc_marubatu.rb'
require './screen_marubatu.rb'

def set_coordinate(array, player)
  set = gets.chomp
  row, col = set.split('').map(&:to_i)
  array[row][col] = player
end

def input_ox(array)
  i = 1
  while i <= 9
    if i.odd?
      puts 'A) ○ を置く場所の数( ex) 01 , 11...)を入力してください'
      set_coordinate(array, 1)
    else
      puts 'B) ○ を置く場所の数( ex) 01 , 11...)を入力してください'
      set_coordinate(array, -1)
    end
    Screen.screen(array)
    Calc.calc(array)
    i += 1
    p 'draw' if i == 10
  end
end

array = [
  [0, 0, 0],
  [0, 0, 0],
  [0, 0, 0]
]

input_ox(array)
