array = [
  [1,-1,-1],
  [1,1,1],
  [1,-1,-1] 
]
  array[0][0]
  array[1][0]
  array[2][0]

  array[0][1]
  array[1][1]
  array[2][1]

  array[0][2]
  array[1][2]
  array[2][2]

def calc(array)

  ans_col = 0
  ans_row = 0
  ans_diag = 0
  ans_diag_inverse = 0
  3.times do |n|
  
    ans_col = 0
    ans_row = 0
    3.times do |num|
      ans_col = ans_col + array[num][n]
      ans_row = ans_row + array[n][num]
    end
    ans_diag = ans_diag + array[n][n] 
    ans_diag_inverse = ans_diag_inverse + array[n][2-n]
  
    if ans_col.abs == 3
      p "col exit"
    end
  
    if ans_row.abs == 3
      p "row exit"
    end
  
    if ans_diag.abs == 3
      p "diag exit"
    end
  
    if ans_diag_inverse.abs == 3
      p "diag_inverse exit"
    end
  
  end

end

def draw
  p "引き分けです"
end

calc(array)
# draw
