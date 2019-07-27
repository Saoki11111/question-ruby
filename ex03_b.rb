def input_isbn
  puts 'ISBNを入力してください'
  isbn = gets.chop
  result = check_isbn(isbn)
  case result
  when :invalid_input
    puts '入力ミスです'
  when :invalid_number
    puts '不正番号です'
  when :valid
    puts '正しい番号です'
  end
end

def check_isbn(isbn)
  # 桁数 13桁
  return :invalid_input if isbn.size != 13

  # 各桁の数値を取り出す
  numbers = isbn.split('').map do |v|
    if v =~ /x/i
      13
    else
      v.to_i
    end
  end

  sum = 0
  # 1~13までを計算 (n * 1 or n * 3)
  # 奇数の番号+偶数の番号を3倍してたす
  numbers.each_with_index do |n, i| 
    sum += i.even? ? n * 1 : n * 3
  end

  if sum % 10 == 0
    :valid
  else
    :invalid_number
  end
end

input_isbn

# ISBN978-4-7741-6516-5
#
# 9 * 1
# 7 * 3
# 8 * 1  
# 4 * 3
# 7 * 1
# 7 * 3
# 4 * 1
# 6 * 3
# 5 * 1
# 6 * 3
# 1 * 1
# 6 * 3
# 5 * 1
#
# 142 % 10 あまり 2
# 10 - 2 = 8
#
#
# src http://www.kumei.ne.jp/c_lang/intro/no_08.htm
