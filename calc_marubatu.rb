class Calc
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
      if ans_col.abs == 3
        puts 'col exit'
        puts 'win'
        exit
      elsif ans_row.abs == 3
        puts 'row exit'
        puts 'win'
        exit
      elsif ans_diag.abs == 3
        puts 'diag exit'
        puts 'win'
        exit
      elsif ans_diag_inverse.abs == 3
        puts 'diag_inverse exit'
        puts 'win'
        exit
      end
    end
  end
end
